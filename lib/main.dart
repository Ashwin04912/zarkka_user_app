import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tailme/application/Home/home_bloc.dart';
import 'package:tailme/application/auth/OtpVerification/otp_verification_bloc.dart';
import 'package:tailme/application/auth/RegisterUser/register_user_bloc.dart';
import 'package:tailme/application/auth/login/login_bloc.dart';
import 'package:tailme/application/shop/shop_bloc.dart';
import 'package:tailme/injection.dart';
import 'package:tailme/presentation/SplashScreen/splash_screen.dart';
import 'package:tailme/theme_util.dart';

import 'application/AddAddress/add_address_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MainApp());
}

// ignore: must_be_immutable
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ThemeUtil.isDarkMode(context);
    //
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor:
          Color(0xFF343333), // Change to your Scaffold's background color
    ));
    return ScreenUtilInit(
      designSize: const Size(393, 812),
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(create: (context) => getIt<HomeBloc>()),
          BlocProvider<LoginBloc>(create: (context) => getIt<LoginBloc>()),
          BlocProvider<RegisterUserBloc>(
              create: (context) => getIt<RegisterUserBloc>()),
          BlocProvider<OtpVerificationBloc>(
              create: (context) => getIt<OtpVerificationBloc>()),
          BlocProvider<AddAddressBloc>(
              create: (context) => getIt<AddAddressBloc>()),
          BlocProvider<ShopBloc>(create: (context) => getIt<ShopBloc>()),
        ],
        child: MaterialApp(
          darkTheme: ThemeData(
            
            appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                // Status bar color
                statusBarColor: Colors.transparent,

                // Status bar brightness (optional)
                statusBarIconBrightness:
                    Brightness.dark, // For Android (dark icons)
                statusBarBrightness: Brightness.light, // For iOS (dark icons)
              ),
            ),
            scaffoldBackgroundColor: const Color(0xFF343333),
            primaryColor: Colors.blue,
            brightness: Brightness.dark,
          ),
          themeMode: ThemeMode.system,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                // Status bar color
                statusBarColor: Colors.transparent,
                // Status bar brightness (optional)
                statusBarIconBrightness: isDarkMode
                    ? Brightness.light
                    : Brightness.dark, // For Android (dark icons)
                statusBarBrightness: isDarkMode
                    ? Brightness.light
                    : Brightness.dark, // For iOS (dark icons)
              ),
              color: const Color(0xFF343333),
              iconTheme: const IconThemeData(color: Colors.white),
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: const Splashscreen(),
        ),
      ),
    );
  }
}

//////
