import 'package:flutter/material.dart';
import 'package:flutter_demo/core/resource/size_utils.dart';
import 'package:flutter_demo/features/news/presentation/view/widget/news_item.dart';
import 'package:flutter_demo/widgets/common_back_appbar.dart';

import '../../domain/entities/news_entity.dart';

class NewsListScreen extends StatelessWidget {
  final List<DifferentNewsEntity?> list;
  final String title;

  const NewsListScreen(this.list, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonBackAppBar(title: title),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: spacingTinyW),
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return NewsItem(list[index]?.coverImage, list[index]?.title);
            },
            itemCount: list.length ?? 0,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 10,
              );
            },
          ),
        ));
  }
}
