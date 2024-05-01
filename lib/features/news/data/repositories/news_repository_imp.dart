import 'package:dartz/dartz.dart';
import 'package:flutter_demo/core/error/failures.dart';
import 'package:flutter_demo/features/news/domain/entities/news_entity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/news_repository.dart';
import '../datasources/local_datasource.dart';
import '../models/news_model.dart';

@Injectable(as: NewsRepository)
class NewsRepositoryImp extends NewsRepository {
  final NewsLocalDataSource newsLocalDataSource;

  NewsRepositoryImp(this.newsLocalDataSource);

  @override
  Future<Either<Failure, NewsDashboardEntity>> getNews() async {
    try {
      var model = NewsModel.fromJson(await newsLocalDataSource.getLocalNews());
      var entity = NewsDashboardEntity.fromModel(model.dashboard);
      return Right(entity);
    } catch (e) {
      return Left(LocalDataFailure(e.toString()));
    }
  }
}
