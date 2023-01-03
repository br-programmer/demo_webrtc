import 'package:demo_webrtc/core/core.dart';
import 'package:injectable/injectable.dart';

@prod
@Injectable(as: Config)
class ProdConfig implements Config {
  @override
  String get baseUrl => '';

  @override
  bool get enableLogging => false;

  @override
  String get flavorName => prod.name;

  @override
  String get turnUrl => '';
}
