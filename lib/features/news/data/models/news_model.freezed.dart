// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return _NewsModel.fromJson(json);
}

/// @nodoc
mixin _$NewsModel {
  String? get version => throw _privateConstructorUsedError;
  set version(String? value) => throw _privateConstructorUsedError;
  String? get encoding => throw _privateConstructorUsedError;
  set encoding(String? value) => throw _privateConstructorUsedError;
  NewsDashboardModel? get dashboard => throw _privateConstructorUsedError;
  set dashboard(NewsDashboardModel? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsModelCopyWith<NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelCopyWith<$Res> {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) then) =
      _$NewsModelCopyWithImpl<$Res, NewsModel>;
  @useResult
  $Res call({String? version, String? encoding, NewsDashboardModel? dashboard});

  $NewsDashboardModelCopyWith<$Res>? get dashboard;
}

/// @nodoc
class _$NewsModelCopyWithImpl<$Res, $Val extends NewsModel>
    implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? encoding = freezed,
    Object? dashboard = freezed,
  }) {
    return _then(_value.copyWith(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      encoding: freezed == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String?,
      dashboard: freezed == dashboard
          ? _value.dashboard
          : dashboard // ignore: cast_nullable_to_non_nullable
              as NewsDashboardModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsDashboardModelCopyWith<$Res>? get dashboard {
    if (_value.dashboard == null) {
      return null;
    }

    return $NewsDashboardModelCopyWith<$Res>(_value.dashboard!, (value) {
      return _then(_value.copyWith(dashboard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsModelImplCopyWith<$Res>
    implements $NewsModelCopyWith<$Res> {
  factory _$$NewsModelImplCopyWith(
          _$NewsModelImpl value, $Res Function(_$NewsModelImpl) then) =
      __$$NewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? version, String? encoding, NewsDashboardModel? dashboard});

  @override
  $NewsDashboardModelCopyWith<$Res>? get dashboard;
}

/// @nodoc
class __$$NewsModelImplCopyWithImpl<$Res>
    extends _$NewsModelCopyWithImpl<$Res, _$NewsModelImpl>
    implements _$$NewsModelImplCopyWith<$Res> {
  __$$NewsModelImplCopyWithImpl(
      _$NewsModelImpl _value, $Res Function(_$NewsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? encoding = freezed,
    Object? dashboard = freezed,
  }) {
    return _then(_$NewsModelImpl(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      encoding: freezed == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String?,
      dashboard: freezed == dashboard
          ? _value.dashboard
          : dashboard // ignore: cast_nullable_to_non_nullable
              as NewsDashboardModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsModelImpl implements _NewsModel {
  _$NewsModelImpl({this.version, this.encoding, this.dashboard});

  factory _$NewsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsModelImplFromJson(json);

  @override
  String? version;
  @override
  String? encoding;
  @override
  NewsDashboardModel? dashboard;

  @override
  String toString() {
    return 'NewsModel(version: $version, encoding: $encoding, dashboard: $dashboard)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      __$$NewsModelImplCopyWithImpl<_$NewsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsModelImplToJson(
      this,
    );
  }
}

abstract class _NewsModel implements NewsModel {
  factory _NewsModel(
      {String? version,
      String? encoding,
      NewsDashboardModel? dashboard}) = _$NewsModelImpl;

  factory _NewsModel.fromJson(Map<String, dynamic> json) =
      _$NewsModelImpl.fromJson;

  @override
  String? get version;
  set version(String? value);
  @override
  String? get encoding;
  set encoding(String? value);
  @override
  NewsDashboardModel? get dashboard;
  set dashboard(NewsDashboardModel? value);
  @override
  @JsonKey(ignore: true)
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsDashboardModel _$NewsDashboardModelFromJson(Map<String, dynamic> json) {
  return _NewsDashboardModel.fromJson(json);
}

/// @nodoc
mixin _$NewsDashboardModel {
  List<NewsDashboardCategoriesModel?>? get categories =>
      throw _privateConstructorUsedError;
  set categories(List<NewsDashboardCategoriesModel?>? value) =>
      throw _privateConstructorUsedError;
  List<NewsDashboardBannersModel?>? get banners =>
      throw _privateConstructorUsedError;
  set banners(List<NewsDashboardBannersModel?>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'trending_news')
  List<NewsDashboardTrendingNewsModel?>? get trendingNews =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'trending_news')
  set trendingNews(List<NewsDashboardTrendingNewsModel?>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'breaking_news')
  List<NewsDashboardBreakingNewsModel?>? get breakingNews =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'breaking_news')
  set breakingNews(List<NewsDashboardBreakingNewsModel?>? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDashboardModelCopyWith<NewsDashboardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDashboardModelCopyWith<$Res> {
  factory $NewsDashboardModelCopyWith(
          NewsDashboardModel value, $Res Function(NewsDashboardModel) then) =
      _$NewsDashboardModelCopyWithImpl<$Res, NewsDashboardModel>;
  @useResult
  $Res call(
      {List<NewsDashboardCategoriesModel?>? categories,
      List<NewsDashboardBannersModel?>? banners,
      @JsonKey(name: 'trending_news')
      List<NewsDashboardTrendingNewsModel?>? trendingNews,
      @JsonKey(name: 'breaking_news')
      List<NewsDashboardBreakingNewsModel?>? breakingNews});
}

/// @nodoc
class _$NewsDashboardModelCopyWithImpl<$Res, $Val extends NewsDashboardModel>
    implements $NewsDashboardModelCopyWith<$Res> {
  _$NewsDashboardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? banners = freezed,
    Object? trendingNews = freezed,
    Object? breakingNews = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<NewsDashboardCategoriesModel?>?,
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<NewsDashboardBannersModel?>?,
      trendingNews: freezed == trendingNews
          ? _value.trendingNews
          : trendingNews // ignore: cast_nullable_to_non_nullable
              as List<NewsDashboardTrendingNewsModel?>?,
      breakingNews: freezed == breakingNews
          ? _value.breakingNews
          : breakingNews // ignore: cast_nullable_to_non_nullable
              as List<NewsDashboardBreakingNewsModel?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsDashboardModelImplCopyWith<$Res>
    implements $NewsDashboardModelCopyWith<$Res> {
  factory _$$NewsDashboardModelImplCopyWith(_$NewsDashboardModelImpl value,
          $Res Function(_$NewsDashboardModelImpl) then) =
      __$$NewsDashboardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NewsDashboardCategoriesModel?>? categories,
      List<NewsDashboardBannersModel?>? banners,
      @JsonKey(name: 'trending_news')
      List<NewsDashboardTrendingNewsModel?>? trendingNews,
      @JsonKey(name: 'breaking_news')
      List<NewsDashboardBreakingNewsModel?>? breakingNews});
}

/// @nodoc
class __$$NewsDashboardModelImplCopyWithImpl<$Res>
    extends _$NewsDashboardModelCopyWithImpl<$Res, _$NewsDashboardModelImpl>
    implements _$$NewsDashboardModelImplCopyWith<$Res> {
  __$$NewsDashboardModelImplCopyWithImpl(_$NewsDashboardModelImpl _value,
      $Res Function(_$NewsDashboardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? banners = freezed,
    Object? trendingNews = freezed,
    Object? breakingNews = freezed,
  }) {
    return _then(_$NewsDashboardModelImpl(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<NewsDashboardCategoriesModel?>?,
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<NewsDashboardBannersModel?>?,
      trendingNews: freezed == trendingNews
          ? _value.trendingNews
          : trendingNews // ignore: cast_nullable_to_non_nullable
              as List<NewsDashboardTrendingNewsModel?>?,
      breakingNews: freezed == breakingNews
          ? _value.breakingNews
          : breakingNews // ignore: cast_nullable_to_non_nullable
              as List<NewsDashboardBreakingNewsModel?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsDashboardModelImpl implements _NewsDashboardModel {
  _$NewsDashboardModelImpl(
      {this.categories,
      this.banners,
      @JsonKey(name: 'trending_news') this.trendingNews,
      @JsonKey(name: 'breaking_news') this.breakingNews});

  factory _$NewsDashboardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsDashboardModelImplFromJson(json);

  @override
  List<NewsDashboardCategoriesModel?>? categories;
  @override
  List<NewsDashboardBannersModel?>? banners;
  @override
  @JsonKey(name: 'trending_news')
  List<NewsDashboardTrendingNewsModel?>? trendingNews;
  @override
  @JsonKey(name: 'breaking_news')
  List<NewsDashboardBreakingNewsModel?>? breakingNews;

  @override
  String toString() {
    return 'NewsDashboardModel(categories: $categories, banners: $banners, trendingNews: $trendingNews, breakingNews: $breakingNews)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDashboardModelImplCopyWith<_$NewsDashboardModelImpl> get copyWith =>
      __$$NewsDashboardModelImplCopyWithImpl<_$NewsDashboardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsDashboardModelImplToJson(
      this,
    );
  }
}

abstract class _NewsDashboardModel implements NewsDashboardModel {
  factory _NewsDashboardModel(
          {List<NewsDashboardCategoriesModel?>? categories,
          List<NewsDashboardBannersModel?>? banners,
          @JsonKey(name: 'trending_news')
          List<NewsDashboardTrendingNewsModel?>? trendingNews,
          @JsonKey(name: 'breaking_news')
          List<NewsDashboardBreakingNewsModel?>? breakingNews}) =
      _$NewsDashboardModelImpl;

  factory _NewsDashboardModel.fromJson(Map<String, dynamic> json) =
      _$NewsDashboardModelImpl.fromJson;

  @override
  List<NewsDashboardCategoriesModel?>? get categories;
  set categories(List<NewsDashboardCategoriesModel?>? value);
  @override
  List<NewsDashboardBannersModel?>? get banners;
  set banners(List<NewsDashboardBannersModel?>? value);
  @override
  @JsonKey(name: 'trending_news')
  List<NewsDashboardTrendingNewsModel?>? get trendingNews;
  @JsonKey(name: 'trending_news')
  set trendingNews(List<NewsDashboardTrendingNewsModel?>? value);
  @override
  @JsonKey(name: 'breaking_news')
  List<NewsDashboardBreakingNewsModel?>? get breakingNews;
  @JsonKey(name: 'breaking_news')
  set breakingNews(List<NewsDashboardBreakingNewsModel?>? value);
  @override
  @JsonKey(ignore: true)
  _$$NewsDashboardModelImplCopyWith<_$NewsDashboardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsDashboardCategoriesModel _$NewsDashboardCategoriesModelFromJson(
    Map<String, dynamic> json) {
  return _NewsDashboardCategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$NewsDashboardCategoriesModel {
  String? get catId => throw _privateConstructorUsedError;
  set catId(String? value) => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  set title(String? value) => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  set image(String? value) => throw _privateConstructorUsedError;
  String? get count => throw _privateConstructorUsedError;
  set count(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDashboardCategoriesModelCopyWith<NewsDashboardCategoriesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDashboardCategoriesModelCopyWith<$Res> {
  factory $NewsDashboardCategoriesModelCopyWith(
          NewsDashboardCategoriesModel value,
          $Res Function(NewsDashboardCategoriesModel) then) =
      _$NewsDashboardCategoriesModelCopyWithImpl<$Res,
          NewsDashboardCategoriesModel>;
  @useResult
  $Res call({String? catId, String? title, String? image, String? count});
}

/// @nodoc
class _$NewsDashboardCategoriesModelCopyWithImpl<$Res,
        $Val extends NewsDashboardCategoriesModel>
    implements $NewsDashboardCategoriesModelCopyWith<$Res> {
  _$NewsDashboardCategoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catId = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      catId: freezed == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsDashboardCategoriesModelImplCopyWith<$Res>
    implements $NewsDashboardCategoriesModelCopyWith<$Res> {
  factory _$$NewsDashboardCategoriesModelImplCopyWith(
          _$NewsDashboardCategoriesModelImpl value,
          $Res Function(_$NewsDashboardCategoriesModelImpl) then) =
      __$$NewsDashboardCategoriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? catId, String? title, String? image, String? count});
}

/// @nodoc
class __$$NewsDashboardCategoriesModelImplCopyWithImpl<$Res>
    extends _$NewsDashboardCategoriesModelCopyWithImpl<$Res,
        _$NewsDashboardCategoriesModelImpl>
    implements _$$NewsDashboardCategoriesModelImplCopyWith<$Res> {
  __$$NewsDashboardCategoriesModelImplCopyWithImpl(
      _$NewsDashboardCategoriesModelImpl _value,
      $Res Function(_$NewsDashboardCategoriesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catId = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? count = freezed,
  }) {
    return _then(_$NewsDashboardCategoriesModelImpl(
      catId: freezed == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsDashboardCategoriesModelImpl
    implements _NewsDashboardCategoriesModel {
  _$NewsDashboardCategoriesModelImpl(
      {this.catId, this.title, this.image, this.count});

  factory _$NewsDashboardCategoriesModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NewsDashboardCategoriesModelImplFromJson(json);

  @override
  String? catId;
  @override
  String? title;
  @override
  String? image;
  @override
  String? count;

  @override
  String toString() {
    return 'NewsDashboardCategoriesModel(catId: $catId, title: $title, image: $image, count: $count)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDashboardCategoriesModelImplCopyWith<
          _$NewsDashboardCategoriesModelImpl>
      get copyWith => __$$NewsDashboardCategoriesModelImplCopyWithImpl<
          _$NewsDashboardCategoriesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsDashboardCategoriesModelImplToJson(
      this,
    );
  }
}

abstract class _NewsDashboardCategoriesModel
    implements NewsDashboardCategoriesModel {
  factory _NewsDashboardCategoriesModel(
      {String? catId,
      String? title,
      String? image,
      String? count}) = _$NewsDashboardCategoriesModelImpl;

  factory _NewsDashboardCategoriesModel.fromJson(Map<String, dynamic> json) =
      _$NewsDashboardCategoriesModelImpl.fromJson;

  @override
  String? get catId;
  set catId(String? value);
  @override
  String? get title;
  set title(String? value);
  @override
  String? get image;
  set image(String? value);
  @override
  String? get count;
  set count(String? value);
  @override
  @JsonKey(ignore: true)
  _$$NewsDashboardCategoriesModelImplCopyWith<
          _$NewsDashboardCategoriesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NewsDashboardBannersModel _$NewsDashboardBannersModelFromJson(
    Map<String, dynamic> json) {
  return _NewsDashboardBannersModel.fromJson(json);
}

/// @nodoc
mixin _$NewsDashboardBannersModel {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  set title(String? value) => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  set coverImage(String? value) => throw _privateConstructorUsedError;
  String? get related => throw _privateConstructorUsedError;
  set related(String? value) => throw _privateConstructorUsedError;
  String? get published => throw _privateConstructorUsedError;
  set published(String? value) => throw _privateConstructorUsedError;
  String? get newsViews => throw _privateConstructorUsedError;
  set newsViews(String? value) => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  set category(String? value) => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  set summary(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDashboardBannersModelCopyWith<NewsDashboardBannersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDashboardBannersModelCopyWith<$Res> {
  factory $NewsDashboardBannersModelCopyWith(NewsDashboardBannersModel value,
          $Res Function(NewsDashboardBannersModel) then) =
      _$NewsDashboardBannersModelCopyWithImpl<$Res, NewsDashboardBannersModel>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? coverImage,
      String? related,
      String? published,
      String? newsViews,
      String? category,
      String? summary});
}

/// @nodoc
class _$NewsDashboardBannersModelCopyWithImpl<$Res,
        $Val extends NewsDashboardBannersModel>
    implements $NewsDashboardBannersModelCopyWith<$Res> {
  _$NewsDashboardBannersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverImage = freezed,
    Object? related = freezed,
    Object? published = freezed,
    Object? newsViews = freezed,
    Object? category = freezed,
    Object? summary = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as String?,
      published: freezed == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as String?,
      newsViews: freezed == newsViews
          ? _value.newsViews
          : newsViews // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsDashboardBannersModelImplCopyWith<$Res>
    implements $NewsDashboardBannersModelCopyWith<$Res> {
  factory _$$NewsDashboardBannersModelImplCopyWith(
          _$NewsDashboardBannersModelImpl value,
          $Res Function(_$NewsDashboardBannersModelImpl) then) =
      __$$NewsDashboardBannersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? coverImage,
      String? related,
      String? published,
      String? newsViews,
      String? category,
      String? summary});
}

/// @nodoc
class __$$NewsDashboardBannersModelImplCopyWithImpl<$Res>
    extends _$NewsDashboardBannersModelCopyWithImpl<$Res,
        _$NewsDashboardBannersModelImpl>
    implements _$$NewsDashboardBannersModelImplCopyWith<$Res> {
  __$$NewsDashboardBannersModelImplCopyWithImpl(
      _$NewsDashboardBannersModelImpl _value,
      $Res Function(_$NewsDashboardBannersModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverImage = freezed,
    Object? related = freezed,
    Object? published = freezed,
    Object? newsViews = freezed,
    Object? category = freezed,
    Object? summary = freezed,
  }) {
    return _then(_$NewsDashboardBannersModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as String?,
      published: freezed == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as String?,
      newsViews: freezed == newsViews
          ? _value.newsViews
          : newsViews // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsDashboardBannersModelImpl implements _NewsDashboardBannersModel {
  _$NewsDashboardBannersModelImpl(
      {this.id,
      this.title,
      this.coverImage,
      this.related,
      this.published,
      this.newsViews,
      this.category,
      this.summary});

  factory _$NewsDashboardBannersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsDashboardBannersModelImplFromJson(json);

  @override
  String? id;
  @override
  String? title;
  @override
  String? coverImage;
  @override
  String? related;
  @override
  String? published;
  @override
  String? newsViews;
  @override
  String? category;
  @override
  String? summary;

  @override
  String toString() {
    return 'NewsDashboardBannersModel(id: $id, title: $title, coverImage: $coverImage, related: $related, published: $published, newsViews: $newsViews, category: $category, summary: $summary)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDashboardBannersModelImplCopyWith<_$NewsDashboardBannersModelImpl>
      get copyWith => __$$NewsDashboardBannersModelImplCopyWithImpl<
          _$NewsDashboardBannersModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsDashboardBannersModelImplToJson(
      this,
    );
  }
}

abstract class _NewsDashboardBannersModel implements NewsDashboardBannersModel {
  factory _NewsDashboardBannersModel(
      {String? id,
      String? title,
      String? coverImage,
      String? related,
      String? published,
      String? newsViews,
      String? category,
      String? summary}) = _$NewsDashboardBannersModelImpl;

  factory _NewsDashboardBannersModel.fromJson(Map<String, dynamic> json) =
      _$NewsDashboardBannersModelImpl.fromJson;

  @override
  String? get id;
  set id(String? value);
  @override
  String? get title;
  set title(String? value);
  @override
  String? get coverImage;
  set coverImage(String? value);
  @override
  String? get related;
  set related(String? value);
  @override
  String? get published;
  set published(String? value);
  @override
  String? get newsViews;
  set newsViews(String? value);
  @override
  String? get category;
  set category(String? value);
  @override
  String? get summary;
  set summary(String? value);
  @override
  @JsonKey(ignore: true)
  _$$NewsDashboardBannersModelImplCopyWith<_$NewsDashboardBannersModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NewsDashboardTrendingNewsModel _$NewsDashboardTrendingNewsModelFromJson(
    Map<String, dynamic> json) {
  return _NewsDashboardTrendingNewsModel.fromJson(json);
}

/// @nodoc
mixin _$NewsDashboardTrendingNewsModel {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  set title(String? value) => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  set coverImage(String? value) => throw _privateConstructorUsedError;
  String? get related => throw _privateConstructorUsedError;
  set related(String? value) => throw _privateConstructorUsedError;
  String? get published => throw _privateConstructorUsedError;
  set published(String? value) => throw _privateConstructorUsedError;
  String? get newsViews => throw _privateConstructorUsedError;
  set newsViews(String? value) => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  set category(String? value) => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  set summary(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDashboardTrendingNewsModelCopyWith<NewsDashboardTrendingNewsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDashboardTrendingNewsModelCopyWith<$Res> {
  factory $NewsDashboardTrendingNewsModelCopyWith(
          NewsDashboardTrendingNewsModel value,
          $Res Function(NewsDashboardTrendingNewsModel) then) =
      _$NewsDashboardTrendingNewsModelCopyWithImpl<$Res,
          NewsDashboardTrendingNewsModel>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? coverImage,
      String? related,
      String? published,
      String? newsViews,
      String? category,
      String? summary});
}

/// @nodoc
class _$NewsDashboardTrendingNewsModelCopyWithImpl<$Res,
        $Val extends NewsDashboardTrendingNewsModel>
    implements $NewsDashboardTrendingNewsModelCopyWith<$Res> {
  _$NewsDashboardTrendingNewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverImage = freezed,
    Object? related = freezed,
    Object? published = freezed,
    Object? newsViews = freezed,
    Object? category = freezed,
    Object? summary = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as String?,
      published: freezed == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as String?,
      newsViews: freezed == newsViews
          ? _value.newsViews
          : newsViews // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsDashboardTrendingNewsModelImplCopyWith<$Res>
    implements $NewsDashboardTrendingNewsModelCopyWith<$Res> {
  factory _$$NewsDashboardTrendingNewsModelImplCopyWith(
          _$NewsDashboardTrendingNewsModelImpl value,
          $Res Function(_$NewsDashboardTrendingNewsModelImpl) then) =
      __$$NewsDashboardTrendingNewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? coverImage,
      String? related,
      String? published,
      String? newsViews,
      String? category,
      String? summary});
}

/// @nodoc
class __$$NewsDashboardTrendingNewsModelImplCopyWithImpl<$Res>
    extends _$NewsDashboardTrendingNewsModelCopyWithImpl<$Res,
        _$NewsDashboardTrendingNewsModelImpl>
    implements _$$NewsDashboardTrendingNewsModelImplCopyWith<$Res> {
  __$$NewsDashboardTrendingNewsModelImplCopyWithImpl(
      _$NewsDashboardTrendingNewsModelImpl _value,
      $Res Function(_$NewsDashboardTrendingNewsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverImage = freezed,
    Object? related = freezed,
    Object? published = freezed,
    Object? newsViews = freezed,
    Object? category = freezed,
    Object? summary = freezed,
  }) {
    return _then(_$NewsDashboardTrendingNewsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as String?,
      published: freezed == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as String?,
      newsViews: freezed == newsViews
          ? _value.newsViews
          : newsViews // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsDashboardTrendingNewsModelImpl
    implements _NewsDashboardTrendingNewsModel {
  _$NewsDashboardTrendingNewsModelImpl(
      {this.id,
      this.title,
      this.coverImage,
      this.related,
      this.published,
      this.newsViews,
      this.category,
      this.summary});

  factory _$NewsDashboardTrendingNewsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NewsDashboardTrendingNewsModelImplFromJson(json);

  @override
  String? id;
  @override
  String? title;
  @override
  String? coverImage;
  @override
  String? related;
  @override
  String? published;
  @override
  String? newsViews;
  @override
  String? category;
  @override
  String? summary;

  @override
  String toString() {
    return 'NewsDashboardTrendingNewsModel(id: $id, title: $title, coverImage: $coverImage, related: $related, published: $published, newsViews: $newsViews, category: $category, summary: $summary)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDashboardTrendingNewsModelImplCopyWith<
          _$NewsDashboardTrendingNewsModelImpl>
      get copyWith => __$$NewsDashboardTrendingNewsModelImplCopyWithImpl<
          _$NewsDashboardTrendingNewsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsDashboardTrendingNewsModelImplToJson(
      this,
    );
  }
}

abstract class _NewsDashboardTrendingNewsModel
    implements NewsDashboardTrendingNewsModel {
  factory _NewsDashboardTrendingNewsModel(
      {String? id,
      String? title,
      String? coverImage,
      String? related,
      String? published,
      String? newsViews,
      String? category,
      String? summary}) = _$NewsDashboardTrendingNewsModelImpl;

  factory _NewsDashboardTrendingNewsModel.fromJson(Map<String, dynamic> json) =
      _$NewsDashboardTrendingNewsModelImpl.fromJson;

  @override
  String? get id;
  set id(String? value);
  @override
  String? get title;
  set title(String? value);
  @override
  String? get coverImage;
  set coverImage(String? value);
  @override
  String? get related;
  set related(String? value);
  @override
  String? get published;
  set published(String? value);
  @override
  String? get newsViews;
  set newsViews(String? value);
  @override
  String? get category;
  set category(String? value);
  @override
  String? get summary;
  set summary(String? value);
  @override
  @JsonKey(ignore: true)
  _$$NewsDashboardTrendingNewsModelImplCopyWith<
          _$NewsDashboardTrendingNewsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NewsDashboardBreakingNewsModel _$NewsDashboardBreakingNewsModelFromJson(
    Map<String, dynamic> json) {
  return _NewsDashboardBreakingNewsModel.fromJson(json);
}

/// @nodoc
mixin _$NewsDashboardBreakingNewsModel {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  set title(String? value) => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  set coverImage(String? value) => throw _privateConstructorUsedError;
  String? get related => throw _privateConstructorUsedError;
  set related(String? value) => throw _privateConstructorUsedError;
  String? get published => throw _privateConstructorUsedError;
  set published(String? value) => throw _privateConstructorUsedError;
  String? get newsViews => throw _privateConstructorUsedError;
  set newsViews(String? value) => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  set category(String? value) => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  set summary(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDashboardBreakingNewsModelCopyWith<NewsDashboardBreakingNewsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDashboardBreakingNewsModelCopyWith<$Res> {
  factory $NewsDashboardBreakingNewsModelCopyWith(
          NewsDashboardBreakingNewsModel value,
          $Res Function(NewsDashboardBreakingNewsModel) then) =
      _$NewsDashboardBreakingNewsModelCopyWithImpl<$Res,
          NewsDashboardBreakingNewsModel>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? coverImage,
      String? related,
      String? published,
      String? newsViews,
      String? category,
      String? summary});
}

/// @nodoc
class _$NewsDashboardBreakingNewsModelCopyWithImpl<$Res,
        $Val extends NewsDashboardBreakingNewsModel>
    implements $NewsDashboardBreakingNewsModelCopyWith<$Res> {
  _$NewsDashboardBreakingNewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverImage = freezed,
    Object? related = freezed,
    Object? published = freezed,
    Object? newsViews = freezed,
    Object? category = freezed,
    Object? summary = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as String?,
      published: freezed == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as String?,
      newsViews: freezed == newsViews
          ? _value.newsViews
          : newsViews // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsDashboardBreakingNewsModelImplCopyWith<$Res>
    implements $NewsDashboardBreakingNewsModelCopyWith<$Res> {
  factory _$$NewsDashboardBreakingNewsModelImplCopyWith(
          _$NewsDashboardBreakingNewsModelImpl value,
          $Res Function(_$NewsDashboardBreakingNewsModelImpl) then) =
      __$$NewsDashboardBreakingNewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? coverImage,
      String? related,
      String? published,
      String? newsViews,
      String? category,
      String? summary});
}

/// @nodoc
class __$$NewsDashboardBreakingNewsModelImplCopyWithImpl<$Res>
    extends _$NewsDashboardBreakingNewsModelCopyWithImpl<$Res,
        _$NewsDashboardBreakingNewsModelImpl>
    implements _$$NewsDashboardBreakingNewsModelImplCopyWith<$Res> {
  __$$NewsDashboardBreakingNewsModelImplCopyWithImpl(
      _$NewsDashboardBreakingNewsModelImpl _value,
      $Res Function(_$NewsDashboardBreakingNewsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverImage = freezed,
    Object? related = freezed,
    Object? published = freezed,
    Object? newsViews = freezed,
    Object? category = freezed,
    Object? summary = freezed,
  }) {
    return _then(_$NewsDashboardBreakingNewsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as String?,
      published: freezed == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as String?,
      newsViews: freezed == newsViews
          ? _value.newsViews
          : newsViews // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsDashboardBreakingNewsModelImpl
    implements _NewsDashboardBreakingNewsModel {
  _$NewsDashboardBreakingNewsModelImpl(
      {this.id,
      this.title,
      this.coverImage,
      this.related,
      this.published,
      this.newsViews,
      this.category,
      this.summary});

  factory _$NewsDashboardBreakingNewsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NewsDashboardBreakingNewsModelImplFromJson(json);

  @override
  String? id;
  @override
  String? title;
  @override
  String? coverImage;
  @override
  String? related;
  @override
  String? published;
  @override
  String? newsViews;
  @override
  String? category;
  @override
  String? summary;

  @override
  String toString() {
    return 'NewsDashboardBreakingNewsModel(id: $id, title: $title, coverImage: $coverImage, related: $related, published: $published, newsViews: $newsViews, category: $category, summary: $summary)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDashboardBreakingNewsModelImplCopyWith<
          _$NewsDashboardBreakingNewsModelImpl>
      get copyWith => __$$NewsDashboardBreakingNewsModelImplCopyWithImpl<
          _$NewsDashboardBreakingNewsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsDashboardBreakingNewsModelImplToJson(
      this,
    );
  }
}

abstract class _NewsDashboardBreakingNewsModel
    implements NewsDashboardBreakingNewsModel {
  factory _NewsDashboardBreakingNewsModel(
      {String? id,
      String? title,
      String? coverImage,
      String? related,
      String? published,
      String? newsViews,
      String? category,
      String? summary}) = _$NewsDashboardBreakingNewsModelImpl;

  factory _NewsDashboardBreakingNewsModel.fromJson(Map<String, dynamic> json) =
      _$NewsDashboardBreakingNewsModelImpl.fromJson;

  @override
  String? get id;
  set id(String? value);
  @override
  String? get title;
  set title(String? value);
  @override
  String? get coverImage;
  set coverImage(String? value);
  @override
  String? get related;
  set related(String? value);
  @override
  String? get published;
  set published(String? value);
  @override
  String? get newsViews;
  set newsViews(String? value);
  @override
  String? get category;
  set category(String? value);
  @override
  String? get summary;
  set summary(String? value);
  @override
  @JsonKey(ignore: true)
  _$$NewsDashboardBreakingNewsModelImplCopyWith<
          _$NewsDashboardBreakingNewsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
