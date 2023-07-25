import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
)
Future<void> configureDependencies() async =>
    getIt.init(environment: Environment.prod);
