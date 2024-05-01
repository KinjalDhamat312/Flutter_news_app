import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/news_entity.dart';
import '../repositories/news_repository.dart';

@injectable
class GetNewsUseCase extends UseCase<NewsDashboardEntity, String> {
  final NewsRepository _newsRepository;

  GetNewsUseCase(this._newsRepository);

  @override
  Future<Either<Failure, NewsDashboardEntity>> call(String params) {
    return _newsRepository.getNews();
  }
}
