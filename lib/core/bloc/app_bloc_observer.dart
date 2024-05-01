import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/utils/log_util.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    logI('onCreate(${bloc.runtimeType})');
  }
  
  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logI('onError(${bloc.runtimeType}, $error $stackTrace)');
  }


  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    logI('onChange(${bloc.runtimeType}, ${change.currentState.toString()})');
  }
}
