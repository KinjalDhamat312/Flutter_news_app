import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/news_entity.dart';

abstract class NewsRepository {
  Future<Either<Failure, NewsDashboardEntity>> getNews();
}
