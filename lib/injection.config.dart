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
import 'application/Home/home_bloc.dart' as _i716;
import 'application/my_orders/my_orders_bloc.dart' as _i180;
import 'application/shop/shop_bloc.dart' as _i398;
import 'infrastructure/AddAddress/addressApi_impl.dart' as _i272;
import 'infrastructure/auth/auth_repository.dart' as _i886;
import 'infrastructure/FACADES/i_address_facade.dart' as _i1040;
import 'infrastructure/FACADES/i_auth_facade.dart' as _i53;
import 'infrastructure/FACADES/i_home_facade.dart' as _i806;
import 'infrastructure/FACADES/i_place_order_facades.dart' as _i1010;
import 'infrastructure/FACADES/i_shop_facade.dart' as _i354;
import 'infrastructure/Home/home_api_impl.dart' as _i31;
import 'infrastructure/my_orders/my_orders_api_impl.dart' as _i539;
import 'infrastructure/shop/shop_api_impl.dart' as _i753;

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
    gh.factory<_i398.ShopBloc>(() => _i398.ShopBloc());
    gh.factory<_i180.MyOrdersBloc>(() => _i180.MyOrdersBloc());
    gh.factory<_i861.AddAddressBloc>(() => _i861.AddAddressBloc());
    gh.factory<_i716.HomeBloc>(() => _i716.HomeBloc());
    gh.factory<_i171.OtpVerificationBloc>(() => _i171.OtpVerificationBloc());
    gh.factory<_i210.RegisterUserBloc>(() => _i210.RegisterUserBloc());
    gh.factory<_i722.LoginBloc>(() => _i722.LoginBloc());
    gh.lazySingleton<_i354.IShopFacade>(() => _i753.CreateOrderRepo());
    gh.lazySingleton<_i1010.IMyOrdersFacade>(() => _i539.MyOrderRepo());
    gh.lazySingleton<_i53.IAuthFacade>(() => _i886.AuthRepository());
    gh.lazySingleton<_i1040.IAddAddressFacade>(() => _i272.AddAddressRepo());
    gh.lazySingleton<_i806.IHomePageFacade>(() => _i31.HomeApiImpl());
    return this;
  }
}
