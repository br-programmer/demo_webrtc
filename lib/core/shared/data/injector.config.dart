// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:demo_webrtc/core/core.dart' as _i3;
import 'package:demo_webrtc/core/shared/data/config/dev_config.dart' as _i5;
import 'package:demo_webrtc/core/shared/data/config/prod_config.dart' as _i4;
import 'package:demo_webrtc/features/home/data/repositories/web_rtc_repository.dart'
    as _i7;
import 'package:demo_webrtc/features/home/home.dart' as _i6;
import 'package:demo_webrtc/features/home/presentation/bloc/home_bloc.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _prod = 'prod';
const String _dev = 'dev';

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.Config>(
      () => _i4.ProdConfig(),
      registerFor: {_prod},
    );
    gh.factory<_i3.Config>(
      () => _i5.DevConfig(),
      registerFor: {_dev},
    );
    gh.factory<_i6.IWebRTCRepository>(
        () => _i7.WebRtcRepository(gh<_i3.Config>()));
    gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc(gh<_i6.IWebRTCRepository>()));
    return this;
  }
}
