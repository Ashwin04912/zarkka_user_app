import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tailme/application/my_orders/my_orders_bloc.dart';
import 'package:tailme/presentation/Notification/Screen_notification.dart';
import 'package:tailme/presentation/my_orders/screen_my_orders.dart';
import 'package:tailme/presentation/wishlist/Screen_wishlist.dart';
import 'package:tailme/theme_util.dart';

class ReusableWidgets {
  static getAppBar(BuildContext context) {
    bool isDarkMode = ThemeUtil.isDarkMode(context);
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor:Colors.transparent,
      title: SizedBox(
        width: 290.w,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Search Materials,Products....',
            hintStyle:   TextStyle(
              color:isDarkMode?Colors.white: const Color(0xFF1D1D1D),
              fontSize: 14,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w400,
              
            ),
            prefixIcon:  Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.search,
                color: isDarkMode?Colors.white: const Color(0xFF1D1D1D),
              ),
            ),
            filled: true,
            fillColor: isDarkMode?const Color(0xFF646E77): const Color(0xFFCFCFCF),
            contentPadding:
                 EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      actions: [
        // IconButton(
        //   onPressed: () {
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //             builder: (context) => const ScreenWishlist()));
        //   },
        //   icon: SvgPicture.asset('assets/images/home/heart_ic.svg',color: isDarkMode?Colors.white:Colors.black,),
        // ),
        IconButton(
          onPressed: () {
            // BlocProvider.of<MyOrdersBloc>(context).add(MyOrdersEvent.getProceededOrders(model: model));
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  const ScreenMyOrders()));
          },
          icon: SvgPicture.asset('assets/images/home/cart.svg',color: isDarkMode?Colors.white:Colors.black,),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ScreenNotification()));
          },
          icon: SvgPicture.asset('assets/images/home/Alert_Bell.svg',color: isDarkMode?Colors.white:Colors. black,),
        ),
      ],
    );
  }
}
