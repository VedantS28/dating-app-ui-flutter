import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/const/appcolor.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  const CustomTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container( 
      margin: EdgeInsets.all(15),
      height: 60,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.widgetColor,
          ),
          hintText: "Search your partner",
          hintStyle: const TextStyle(color: Colors.grey),
          suffixIcon: Container(
            height: 60,
            width: 80,
            decoration: BoxDecoration(
                color: AppColors.widgetColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: Color.fromARGB(255, 221, 214, 214)),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: Color.fromARGB(255, 221, 214, 214),strokeAlign: BorderSide.strokeAlignOutside)),
        ),
      ),
    );
  }
}
