// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'application/AddAddress/add_address_bloc.dart' as _i861;
import 'application/auth/login/login_bloc.dart' as _i722;
import 'application/auth/OtpVerification/otp_verification_bloc.dart' as _i171;
import 'application/auth/RegisterUser/register_user_bloc.dart' as _i210;
import 'infrastructure/AddAddress/add_address_impl.dart' as _i333;
import 'infrastructure/auth/auth_repository.dart' as _i886;
import 'infrastructure/facades/i_address_facade.dart' as _i1026;
import 'infrastructure/facades/i_auth_facade.dart' as _i517;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i722.LoginBloc>(() => _i722.LoginBloc());
    gh.factory<_i171.OtpVerificationBloc>(() => _i171.OtpVerificationBloc());
    gh.factory<_i210.RegisterUserBloc>(() => _i210.RegisterUserBloc());
    gh.factory<_i861.AddAddressBloc>(() => _i861.AddAddressBloc());
    gh.lazySingleton<_i1026.IAddAddressFacade>(() => _i333.AddAddressRepo());
    gh.lazySingleton<_i517.IAuthFacade>(() => _i886.AuthRepository());
    return this;
  }
}
