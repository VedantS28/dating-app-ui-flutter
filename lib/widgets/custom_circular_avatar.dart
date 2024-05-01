import 'package:flutter/material.dart';

class CustomCircularAvatar extends StatelessWidget {
  final bool myprofile;
  final String imageUrl;
  final String name;
  final IconData icon;
  final Color iconColor;
  final Color iconBackgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double size;
  final double height;
  final double width;
  final double innerMargin;

  const CustomCircularAvatar(
      {super.key,
      required this.myprofile,
      required this.height,
      required this.width,
      required this.imageUrl,
      required this.name,
      required this.icon,
      required this.borderColor,
      required this.iconColor,
      required this.borderWidth,
      required this.iconBackgroundColor,
      required this.size,
      required this.innerMargin});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: size,
                child: Container(
                  margin: EdgeInsets.all(innerMargin),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imageUrl), fit: BoxFit.cover),
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: borderColor, width: borderWidth)),
                ),
              ),
              if (myprofile)
                Positioned(
                  bottom: height*0.0015,
                  right: width*0.008,
                  child: Container(
                    height: height*0.025,
                    decoration: BoxDecoration(
                        color: iconBackgroundColor, shape: BoxShape.circle),
                    child: Icon(
                      icon,
                      color: iconColor,
                      size: size / 2,
                    ),
                  ),
                )
            ],
          ),
          Text(
            name,
            style:  TextStyle(letterSpacing: 0.5, fontSize: width*0.03),
          )
        ],
      ),
    );
  }
}
