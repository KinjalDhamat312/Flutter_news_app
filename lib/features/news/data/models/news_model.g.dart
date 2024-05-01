// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsModelImpl _$$NewsModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelImpl(
      version: json['version'] as String?,
      encoding: json['encoding'] as String?,
      dashboard: json['dashboard'] == null
          ? null
          : NewsDashboardModel.fromJson(
              json['dashboard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewsModelImplToJson(_$NewsModelImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'encoding': instance.encoding,
      'dashboard': instance.dashboard,
    };

_$NewsDashboardModelImpl _$$NewsDashboardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsDashboardModelImpl(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : NewsDashboardCategoriesModel.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : NewsDashboardBannersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      trendingNews: (json['trending_news'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : NewsDashboardTrendingNewsModel.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      breakingNews: (json['breaking_news'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : NewsDashboardBreakingNewsModel.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewsDashboardModelImplToJson(
        _$NewsDashboardModelImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'banners': instance.banners,
      'trending_news': instance.trendingNews,
      'breaking_news': instance.breakingNews,
    };

_$NewsDashboardCategoriesModelImpl _$$NewsDashboardCategoriesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsDashboardCategoriesModelImpl(
      catId: json['catId'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      count: json['count'] as String?,
    );

Map<String, dynamic> _$$NewsDashboardCategoriesModelImplToJson(
        _$NewsDashboardCategoriesModelImpl instance) =>
    <String, dynamic>{
      'catId': instance.catId,
      'title': instance.title,
      'image': instance.image,
      'count': instance.count,
    };

_$NewsDashboardBannersModelImpl _$$NewsDashboardBannersModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsDashboardBannersModelImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      coverImage: json['coverImage'] as String?,
      related: json['related'] as String?,
      published: json['published'] as String?,
      newsViews: json['newsViews'] as String?,
      category: json['category'] as String?,
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$$NewsDashboardBannersModelImplToJson(
        _$NewsDashboardBannersModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'coverImage': instance.coverImage,
      'related': instance.related,
      'published': instance.published,
      'newsViews': instance.newsViews,
      'category': instance.category,
      'summary': instance.summary,
    };

_$NewsDashboardTrendingNewsModelImpl
    _$$NewsDashboardTrendingNewsModelImplFromJson(Map<String, dynamic> json) =>
        _$NewsDashboardTrendingNewsModelImpl(
          id: json['id'] as String?,
          title: json['title'] as String?,
          coverImage: json['coverImage'] as String?,
          related: json['related'] as String?,
          published: json['published'] as String?,
          newsViews: json['newsViews'] as String?,
          category: json['category'] as String?,
          summary: json['summary'] as String?,
        );

Map<String, dynamic> _$$NewsDashboardTrendingNewsModelImplToJson(
        _$NewsDashboardTrendingNewsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'coverImage': instance.coverImage,
      'related': instance.related,
      'published': instance.published,
      'newsViews': instance.newsViews,
      'category': instance.category,
      'summary': instance.summary,
    };

_$NewsDashboardBreakingNewsModelImpl
    _$$NewsDashboardBreakingNewsModelImplFromJson(Map<String, dynamic> json) =>
        _$NewsDashboardBreakingNewsModelImpl(
          id: json['id'] as String?,
          title: json['title'] as String?,
          coverImage: json['coverImage'] as String?,
          related: json['related'] as String?,
          published: json['published'] as String?,
          newsViews: json['newsViews'] as String?,
          category: json['category'] as String?,
          summary: json['summary'] as String?,
        );

Map<String, dynamic> _$$NewsDashboardBreakingNewsModelImplToJson(
        _$NewsDashboardBreakingNewsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'coverImage': instance.coverImage,
      'related': instance.related,
      'published': instance.published,
      'newsViews': instance.newsViews,
      'category': instance.category,
      'summary': instance.summary,
    };
