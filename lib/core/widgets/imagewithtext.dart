import 'package:flutter/material.dart';

class ImageWithText extends StatelessWidget {
  final String imagePath;
  final String text;
  final double width;
  final double height;

  const ImageWithText({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black
                    .withOpacity(0.5), // Adjust opacity to change brightness
                BlendMode
                    .darken, // Use darken blend mode to decrease brightness
              ),
              child: Image.asset(
                imagePath,
                width: width,
                height: height,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: 'Raleway',
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
