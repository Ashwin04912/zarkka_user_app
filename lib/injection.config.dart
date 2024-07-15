// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/login/login_bloc.dart' as _i3;
import 'application/RegisterUser/register_user_bloc.dart' as _i4;
import 'infrastructure/auth/repository/auth_repository.dart' as _i6;
import 'infrastructure/i_auth_facade.dart' as _i5;

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
    gh.factory<_i3.LoginBloc>(() => _i3.LoginBloc());
    gh.factory<_i4.RegisterUserBloc>(() => _i4.RegisterUserBloc());
    gh.lazySingleton<_i5.IAuthFacade>(() => _i6.AuthRepository());
    return this;
  }
}
