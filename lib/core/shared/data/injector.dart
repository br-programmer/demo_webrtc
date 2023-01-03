import 'dart:async';

import 'package:demo_webrtc/core/core.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
FutureOr<GetIt> configure(String environment) =>
    getIt.init(environment: environment);
