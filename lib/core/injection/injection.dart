import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/core/injection/injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configuredInjection() {
  getIt.init();
}
