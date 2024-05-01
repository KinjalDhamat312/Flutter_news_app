import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/news_entity.dart';
import '../../domain/usecases/get_news_usecase.dart';

part 'news_bloc.freezed.dart';

part 'news_event.dart';

part 'news_state.dart';

@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetNewsUseCase getNewsUseCase;

  NewsBloc(this.getNewsUseCase) : super(const NewsState.initial()) {
    on<NewsEvent>((event, emit) {
      return event.when(getNews: () {
        return _getProduct(emit);
      });
    });
  }

  Future<void> _getProduct(Emitter emit) async {
    emit(NewsState.loading());

    var result = await getNewsUseCase.call("");

    return result.fold((failed) => emit(NewsState.failed(failed)),
        (success) => emit(NewsState.success(success)));
  }
}
