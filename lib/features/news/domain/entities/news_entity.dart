import '../../data/models/news_model.dart';

class NewsDashboardEntity {
  List<NewsDashboardCategoriesEntity?>? categories;
  List<DifferentNewsEntity?>? banners;
  List<DifferentNewsEntity?>? trendingNews;
  List<DifferentNewsEntity?>? breakingNews;

  NewsDashboardEntity(
      this.categories, this.banners, this.trendingNews, this.breakingNews);

  factory NewsDashboardEntity.fromModel(NewsDashboardModel? model) {
    return NewsDashboardEntity(model?.categories, model?.banners,
        model?.trendingNews, model?.breakingNews);
  }
}

class NewsDashboardCategoriesEntity {
  String? catId;
  String? title;
  String? image;
  String? count;

  NewsDashboardCategoriesEntity(this.catId, this.title, this.image, this.count);
}

class DifferentNewsEntity {
  String? id;
  String? title;
  String? coverImage;
  String? related;
  String? published;
  String? newsViews;
  String? category;
  String? summary;
}
