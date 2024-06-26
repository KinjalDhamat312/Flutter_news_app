import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
)
Future configureDependencies({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async =>
    await getIt.init(
        environment: environment, environmentFilter: environmentFilter);
