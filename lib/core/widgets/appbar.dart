import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
  
      backgroundColor:const Color(0xFF343333),
      title: SizedBox(
        width: 290,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Stores,Materials,Products....',
            hintStyle: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w400,
              height: 0.08,
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            filled: true,
            fillColor: const Color(0xFF646E77),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/images/heart_ic.svg'),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/images/Alert_Bell.svg'),
        ),
      ],
    );
  }

   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}