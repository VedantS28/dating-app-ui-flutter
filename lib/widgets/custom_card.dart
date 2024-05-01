import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media_ui/widgets/custom_circular_avatar.dart';
import 'package:social_media_ui/widgets/glass.dart';

class CustomCard extends StatelessWidget {
  final double height;
  final double width;
  final String name;
  final String text;
  final String job;
  final String imageUrl;
  final String bgImageUrl;
  final bool isVerified;

  CustomCard(
      {super.key,
      required this.imageUrl,
      required this.job,
      required this.name,
      required this.text,
      required this.bgImageUrl,
      required this.isVerified,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      height: height * 0.415,
      width: double.infinity,
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bgImageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0x00000000), Color(0xFF000000)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.018, left: width * 0.025),
                        child: CustomCircularAvatar(
                          height: height,
                          width: width,
                          myprofile: true,
                          imageUrl: imageUrl,
                          name: "",
                          icon: Icons.donut_small,
                          borderColor: Colors.black,
                          iconColor: Colors.green,
                          borderWidth: 1,
                          iconBackgroundColor: Colors.white,
                          size: height * 0.025,
                          innerMargin: 0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  letterSpacing: 2),
                            ),
                            Row(
                              children: [
                                Text(
                                  job,
                                  style: TextStyle(
                                      fontSize: width * 0.035,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: width * 0.008,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.medal,
                                  color: Colors.white,
                                  size: width * 0.03,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.016, left: width * 0.01),
                        child: Icon(
                          isVerified ? Icons.verified : null,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.015,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.015,right: width*0.005),
                        child: FrostedGlassBox(
                            theWidth: width * 0.25,
                            theHeight: height * 0.05,
                            theChild: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.personRunning,
                                    color: Colors.white,
                                    size: width * 0.05,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Text(
                                  "Run",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.045),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: width * 0.05),
                    width: width * 0.7,
                    child: Text(
                      text,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.05),
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          left: width * 0.03,
                          child: CustomCircularAvatar(
                              height: height,
                              width: width,
                              myprofile: false,
                              imageUrl: "assets/images/4.jpeg",
                              name: "",
                              icon: Icons.abc,
                              borderColor: Colors.black,
                              iconColor: Colors.transparent,
                              borderWidth: 0,
                              iconBackgroundColor: Colors.transparent,
                              size: 18,
                              innerMargin: 2),
                        ),
                        Positioned(
                          left: width * 0.06,
                          child: CustomCircularAvatar(
                              height: height,
                              width: width,
                              myprofile: false,
                              imageUrl: "assets/images/3.jpeg",
                              name: "",
                              icon: Icons.abc,
                              borderColor: Colors.black,
                              iconColor: Colors.transparent,
                              borderWidth: 0,
                              iconBackgroundColor: Colors.transparent,
                              size: 18,
                              innerMargin: 2),
                        ),
                        Positioned(
                          left: width * 0.09,
                          child: CustomCircularAvatar(
                              height: height,
                              width: width,
                              myprofile: false,
                              imageUrl: "assets/images/2.jpeg",
                              name: "",
                              icon: Icons.abc,
                              borderColor: Colors.black,
                              iconColor: Colors.transparent,
                              borderWidth: 0,
                              iconBackgroundColor: Colors.transparent,
                              size: 18,
                              innerMargin: 2),
                        ),
                        Positioned(
                          left: width * 0.12,
                          child: CustomCircularAvatar(
                              height: height,
                              width: width,
                              myprofile: false,
                              imageUrl: "assets/images/profile.jpeg",
                              name: "",
                              icon: Icons.abc,
                              borderColor: Colors.black,
                              iconColor: Colors.transparent,
                              borderWidth: 0,
                              iconBackgroundColor: Colors.transparent,
                              size: 18,
                              innerMargin: 2),
                        ),
                        Positioned(
                          left: width * 0.23,
                          top: height * 0.01,
                          child: const Text(
                            "+5more",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 96.0),
                          child: FrostedGlassBox(
                            theWidth: width * 0.11,
                            theHeight: height * 0.05,
                            theChild: const FaIcon(
                              FontAwesomeIcons.heart,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: FrostedGlassBox(
                            theWidth: width * 0.1,
                            theHeight: height * 0.05,
                            theChild: const FaIcon(
                              FontAwesomeIcons.message,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        FrostedGlassBox(
                          theWidth: width * 0.11,
                          theHeight: height * 0.05,
                          theChild: const FaIcon(
                            FontAwesomeIcons.ellipsis,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
