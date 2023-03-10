import 'package:demo_webrtc/core/core.dart';
import 'package:injectable/injectable.dart';

@dev
@Injectable(as: Config)
class DevConfig implements Config {
  @override
  String get baseUrl => 'stagingapi.ourglass.com';

  @override
  bool get enableLogging => true;

  @override
  String get flavorName => dev.name;

  @override
  String get turnUrl => 'stun:stun.dev.ourglass.cc:3479';

  @override
  String get accesToken => '';
}
