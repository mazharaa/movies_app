import 'package:injectable/injectable.dart';

@injectable
class Env {
  /// API Base URL
  String get baseUrl => 'https://api.themoviedb.org/3';
}
