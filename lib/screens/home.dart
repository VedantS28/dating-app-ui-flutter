import 'dart:ui';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media_ui/const/appcolor.dart';
import 'package:social_media_ui/widgets/custom_card.dart';
import 'package:social_media_ui/widgets/custom_circular_avatar.dart';
import 'package:social_media_ui/widgets/custom_textfield.dart';

class Home extends StatelessWidget {
  List<String> data = [
    "assets/images/profile.jpeg",
    "assets/images/1.jpeg",
    "assets/images/2.jpeg",
    "assets/images/3.jpeg",
    "assets/images/4.jpeg",
  ];

  List<String> name = ["My Tale", "Mani", "Karthick", "Vimal", "Virat"];

  Home({super.key});
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 70,
        leading: Stack(children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.jpeg"),
            radius: height * 0.05,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.2, sigmaY: 1.2),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.widgetColor),
                    shape: BoxShape.circle),
                child: Stack(children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.jpeg"),
                    radius: height * 0.025,
                  ),
                  if (true)
                    Positioned(
                      bottom: height * 0.001,
                      right: width * 0.006,
                      child: Container(
                        height: height * 0.025,
                        decoration: const BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                        child: Icon(
                          Icons.grade_rounded,
                          color: Colors.white,
                          size: (height * 0.025) / 2,
                        ),
                      ),
                    ),
                ]),
              ),
            ),
          ),
        ]),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Riya William",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.widgetColor),
            ),
            Text(
              "Welcome",
              style: TextStyle(
                  color: Color(0xFF22172A), fontWeight: FontWeight.w400),
            ),
          ],
        ),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFFA1B0CC),
              ),
            ),
            child: IconButton(
              onPressed: () {
                print("width: $width , height: $height");
              },
              icon: const Icon(
                Icons.notifications,
                size: 32,
                color: AppColors.widgetColor,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomTextField(controller: search),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Status",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, itemCount) => CustomCircularAvatar(
                  height: height,
                  width: width,
                  imageUrl: data[itemCount],
                  myprofile: itemCount == 0,
                  name: name[itemCount],
                  icon: Icons.add,
                  borderColor: Colors.white,
                  borderWidth: width * 0.005,
                  iconColor: Colors.white,
                  iconBackgroundColor: AppColors.widgetColor,
                  size: width * 0.095,
                  innerMargin: width * 0.008,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(color: AppColors.widgetColor, width: 2),
                      ),
                    ),
                    child: Text(
                      "Make Friends",
                      style: TextStyle(
                        fontSize: height * 0.025,
                        fontWeight: FontWeight.bold,
                        color: AppColors.widgetColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.07,
                  ),
                  Text(
                    "soulmate",
                    style: TextStyle(
                        fontSize: height * 0.025, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            CustomCard(
                height: height,
                width: width,
                imageUrl: "assets/images/profile.jpeg",
                job: "Athlete",
                name: "Keerthi Karthick",
                text:
                    "There's a lot of room for improvement,you are always welcome",
                bgImageUrl: "assets/images/card.jpeg",
                isVerified: true),
            CustomCard(
                height: height,
                width: width,
                imageUrl: "assets/images/profile.jpeg",
                job: "Athelete",
                name: "Keerthi Karthick",
                text:
                    "There's a lot of room for improvement,you are always welcome",
                bgImageUrl: "assets/images/card.jpeg",
                isVerified: true)
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          color: const Color(0xFF2C272C),
          buttonBackgroundColor: AppColors.widgetColor,
          backgroundColor: Colors.transparent,
          items: const [
            CurvedNavigationBarItem(
                child: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                label: 'Home',
                labelStyle: TextStyle(color: Colors.white)),
            CurvedNavigationBarItem(
                child: FaIcon(
                  FontAwesomeIcons.compass,
                  color: Colors.white,
                ),
                label: 'Explore',
                labelStyle: TextStyle(color: Colors.white)),
            CurvedNavigationBarItem(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                label: 'Upload',
                labelStyle: TextStyle(color: Colors.white)),
            CurvedNavigationBarItem(
                child: Icon(
                  Icons.meeting_room,
                  color: Colors.white,
                ),
                label: 'Team',
                labelStyle: TextStyle(color: Colors.white)),
            CurvedNavigationBarItem(
                child: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                label: 'Chats',
                labelStyle: TextStyle(color: Colors.white)),
          ]),
    );
  }
}
