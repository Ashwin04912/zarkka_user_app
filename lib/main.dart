import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tailme/application/Home/home_bloc.dart';
import 'package:tailme/application/auth/OtpVerification/otp_verification_bloc.dart';
import 'package:tailme/application/auth/RegisterUser/register_user_bloc.dart';
import 'package:tailme/application/auth/login/login_bloc.dart';
import 'package:tailme/application/my_orders/my_orders_bloc.dart';
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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Make status bar transparent
      statusBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
      systemNavigationBarColor: isDarkMode
          ? Colors.black
          : Colors.white, // Change navigation bar color
      systemNavigationBarIconBrightness:
          isDarkMode ? Brightness.light : Brightness.dark,
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
          BlocProvider<MyOrdersBloc>(
              create: (context) => getIt<MyOrdersBloc>()),
        ],
        child: MaterialApp(
          darkTheme: ThemeData(
            // textTheme: const TextTheme(
            //   bodyLarge: TextStyle(
            //     color: Color(0xFF1D1D1D),
            //     fontSize: 15,
            //     fontFamily: 'Urbanist',
            //     fontWeight: FontWeight.w500,
            //     height: 0.08,
            //   ),
            // ),
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
          // themeMode: ThemeMode.system,
          themeMode: ThemeMode.system,
          theme: ThemeData(
            // textTheme: const TextTheme(
            //   bodyLarge: TextStyle(
            //     color: Color(0xFF1D1D1D),
            //     fontSize: 15,
            //     fontFamily: 'Urbanist',
            //     fontWeight: FontWeight.w500,
            //     height: 0.08,
            //   ),
            // ),
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
