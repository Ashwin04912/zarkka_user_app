
// import 'package:flutter/material.dart';
// import 'package:tailme/presentation/auth/ui/ScreenLogin.dart';
// import 'package:tailme/presentation/screens/BottomNavigation.dart';
// import 'package:tailme/presentation/screens/ScreenHome.dart';
// import 'package:tailme/presentation/screens/Screenbooknow.dart';
// import 'package:tailme/presentation/screens/screen_personal_details.dart';

// class SplashScreen extends StatefulWidget {
//   static const String screenId = 'splash_screen';
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     permissionBasedNavigationFunc();
//     super.initState();
//   }

//   int flag = 0;

//   permissionBasedNavigationFunc() {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     User? user = auth.currentUser;
//     String? currentUid = user?.uid;
//     FirebaseFirestore.instance
//         .collection('Users')
//         .where('uid', isEqualTo: currentUid)
//         .snapshots()
//         .listen((event) {
//       event.docs.forEach((element) {
//         flag = 1;
//       });
//     });
//     Timer(const Duration(seconds: 3), () async {
//       FirebaseAuth.instance.authStateChanges().listen((User? user) async {
//         if (user == null) {
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => const ScreenBookNow()));
//         } else if (user != null && flag == 1) {
//           Navigator.pushAndRemoveUntil(
//               context,
//               MaterialPageRoute(builder: (context) => BottomNavigation()),
//               (route) => false);
//         }
//         else if(user !=null && flag == 0){
//            Navigator.pushAndRemoveUntil(
//               context,
//               MaterialPageRoute(builder: (context) => ScreenPersonalDetails()),
//               (route) => false);
//         }

//         // print("printtttttttttttttttttttt");
//       });
//     });
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const Spacer(
//             flex: 2,
//           ),
//           const Center(
//               // child: Image.asset(
//               //   'assets/logo/l1.png',
//               //   height: 300,
//               // ),
//               ),
//           Container(
//               // child: Lottie.asset("assets/lottie/wal2.json", height: 150),
//               ),
//           const Spacer(
//             flex: 1,
//           ),
//         ],
//       ),
//     );
//   }
// }
