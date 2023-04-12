// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:riverpod_2_example/core/network_manager/network_manager.dart'
    as _i3;
import 'package:riverpod_2_example/features/home/data/repositories/home_repository.dart'
    as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.INetworkManager>(_i3.NetworkManager());
    gh.lazySingleton<_i4.HomeRepository>(
        () => _i4.HomeRepositoryImp(networkManager: gh<_i3.NetworkManager>()));
    return this;
  }
}
