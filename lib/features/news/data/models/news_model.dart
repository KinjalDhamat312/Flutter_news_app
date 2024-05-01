import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/news_entity.dart';

part 'news_model.freezed.dart';

part 'news_model.g.dart';

@unfreezed
class NewsModel with _$NewsModel {
  factory NewsModel({
    String? version,
    String? encoding,
    NewsDashboardModel? dashboard,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}

@unfreezed
class NewsDashboardModel with _$NewsDashboardModel {
  factory NewsDashboardModel({
    List<NewsDashboardCategoriesModel?>? categories,
    List<NewsDashboardBannersModel?>? banners,
    @JsonKey(name: 'trending_news')
    List<NewsDashboardTrendingNewsModel?>? trendingNews,
    @JsonKey(name: 'breaking_news')
    List<NewsDashboardBreakingNewsModel?>? breakingNews,
  }) = _NewsDashboardModel;

  factory NewsDashboardModel.fromJson(Map<String, dynamic> json) =>
      _$NewsDashboardModelFromJson(json);
}

@unfreezed
class NewsDashboardCategoriesModel extends NewsDashboardCategoriesEntity
    with _$NewsDashboardCategoriesModel {
  factory NewsDashboardCategoriesModel({
    String? catId,
    String? title,
    String? image,
    String? count,
  }) = _NewsDashboardCategoriesModel;

  factory NewsDashboardCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$NewsDashboardCategoriesModelFromJson(json);
}

@unfreezed
class NewsDashboardBannersModel extends DifferentNewsEntity
    with _$NewsDashboardBannersModel {
  factory NewsDashboardBannersModel({
    String? id,
    String? title,
    String? coverImage,
    String? related,
    String? published,
    String? newsViews,
    String? category,
    String? summary,
  }) = _NewsDashboardBannersModel;

  factory NewsDashboardBannersModel.fromJson(Map<String, dynamic> json) =>
      _$NewsDashboardBannersModelFromJson(json);
}

@unfreezed
class NewsDashboardTrendingNewsModel extends DifferentNewsEntity
    with _$NewsDashboardTrendingNewsModel {
  factory NewsDashboardTrendingNewsModel({
    String? id,
    String? title,
    String? coverImage,
    String? related,
    String? published,
    String? newsViews,
    String? category,
    String? summary,
  }) = _NewsDashboardTrendingNewsModel;

  factory NewsDashboardTrendingNewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsDashboardTrendingNewsModelFromJson(json);
}

@unfreezed
class NewsDashboardBreakingNewsModel extends DifferentNewsEntity
    with _$NewsDashboardBreakingNewsModel {
  factory NewsDashboardBreakingNewsModel({
    String? id,
    String? title,
    String? coverImage,
    String? related,
    String? published,
    String? newsViews,
    String? category,
    String? summary,
  }) = _NewsDashboardBreakingNewsModel;

  factory NewsDashboardBreakingNewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsDashboardBreakingNewsModelFromJson(json);
}
