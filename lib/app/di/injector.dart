import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_app/app/di/injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => $initGetIt(getIt);
