import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/core/resource/app_colors.dart';
import 'package:flutter_demo/core/resource/text_utils.dart';
import 'package:flutter_demo/features/news/presentation/view/widget/news_item.dart';
import 'package:flutter_demo/widgets/single_selection_chip.dart';

import '../../../../core/resource/size_utils.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../injection/injection.dart';
import '../../../../navigation/router_constant.dart';
import '../../../../navigation/router_helper.dart';
import '../../../../utils/scroll/silver_persistence_header.dart';
import '../../../../widgets/common_progress_bar.dart';
import '../../../../widgets/media_banner_view.dart';
import '../../../../widgets/no_data_found_view.dart';
import '../../domain/entities/news_entity.dart';
import '../bloc/news_bloc.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsBloc>(
      create: (context) => getIt()..add(NewsEvent.getNews()),
      child: NewsView(),
    );
  }
}

class NewsView extends StatelessWidget {
  NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.of.primaryBackground,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              title: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: spacingSmallW, vertical: spacingXTinyW),
                child: Text(
                  LocaleKeys.news_title.tr(),
                ),
              ), // leading
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderDelegate(
                minHeight: 50.0,
                maxHeight: 50.0,
                child: Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: spacingSmallW),
                  color: AppColors.of.primaryBackground,
                  child: BlocBuilder<NewsBloc, NewsState>(
                    builder: (BuildContext context, NewsState state) {
                      return state.maybeWhen(success: (data) {
                        return SingleSelectionChip(
                          items: data.categories
                                  ?.map((e) => e?.title ?? "")
                                  .toList() ??
                              [],
                        );
                      }, orElse: () {
                        return SizedBox();
                      });
                    },
                  ),
                ),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate(_buildMainView()))
          ],
        ),
      ),
    );
  }

  List<Widget> _buildMainView() {
    return [
      Padding(
        padding: EdgeInsets.all(spacingSmallW),
        child: BlocBuilder<NewsBloc, NewsState>(
          builder: (BuildContext context, NewsState state) {
            return state.when(
                initial: () => CommonProgressBar(),
                loading: () => CommonProgressBar(),
                success: (data) {
                  return Column(
                    children: [
                      if (data.banners?.isNotEmpty == true)
                        MediaBannerView(data.banners
                                ?.map((e) => e?.coverImage ?? '')
                                .toList() ??
                            []),
                      if (data.trendingNews?.isNotEmpty == true)
                        buildNewsMoreView(
                          context,
                          LocaleKeys.news_trending.tr(),
                          data.trendingNews,
                        ),
                      if (data.breakingNews?.isNotEmpty == true)
                        buildNewsMoreView(context, LocaleKeys.news_breaking.tr(),
                            data.breakingNews,
                            max: 4),
                    ],
                  );
                },
                failed: (failed) => NoDataFoundView());
          },
        ),
      )
    ];
  }

  Widget buildNewsMoreView(
      BuildContext context, String title, List<DifferentNewsEntity?>? news,
      {int max = 2}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: spacingTinyW, vertical: spacingMediumW),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: context.textTitleMedium),
              InkWell(
                onTap: () {
                  getIt<NavigationHelper>()
                      .pushScreen(RouteConstant.newsListScreen.name, extra: {
                    RouteArgument.list: news,
                    RouteArgument.title: title
                  });
                },
                child: Text(LocaleKeys.common_see_more.tr(),
                    style: TextStyle(
                        color: AppColors.of.gray, fontWeight: FontWeight.w500)),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: spacingTinyW),
          child: Column(
            children: [
              ...List.generate(
                  (news?.length ?? 0) > max ? max : (news?.length ?? 0),
                  (index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: spacingSmallH),
                  child: NewsItem(news![index]?.coverImage, news[index]?.title),
                );
              })
            ],
          ),
        ),
      ],
    );
  }
}
