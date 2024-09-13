import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tailme/application/Home/home_bloc.dart';
import 'package:tailme/application/auth/OtpVerification/otp_verification_bloc.dart';
import 'package:tailme/application/auth/RegisterUser/register_user_bloc.dart';
import 'package:tailme/application/auth/login/login_bloc.dart';
import 'package:tailme/injection.dart';
import 'package:tailme/presentation/SplashScreen/splash_screen.dart';

import 'application/AddAddress/add_address_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MainApp());
}

// ignore: must_be_immutable
class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {//
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor:
          Color(0xFF343333), // Change to your Scaffold's background color
    ));
    return ScreenUtilInit(
      designSize: const Size(393, 812),
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(create: (context)=>getIt<HomeBloc>()),
           BlocProvider<LoginBloc>(create: (context) => getIt<LoginBloc>()),
          BlocProvider<RegisterUserBloc>(create: (context) => getIt<RegisterUserBloc> ()),
          BlocProvider<OtpVerificationBloc>(create: (context) => getIt<OtpVerificationBloc> ()),
          BlocProvider<AddAddressBloc>(create : (context)=> getIt<AddAddressBloc>()),
        ],
        child: MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFF343333),
            appBarTheme: const AppBarTheme(
              color: Color(0xFF343333),
              iconTheme: IconThemeData(color: Colors.white),
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


