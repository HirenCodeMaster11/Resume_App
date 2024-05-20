import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_app/Builder/Components/title.dart';

AppBar appBar(double height, double width) {
  return AppBar(
    automaticallyImplyLeading: false,
    systemOverlayStyle:
    SystemUiOverlayStyle(statusBarColor: Color(0xff006F66)),
    backgroundColor: const Color(0xff009788),
    toolbarHeight: height * 0.085,
    title: TITLE(height),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 9, 0, 0),
            alignment: Alignment.center,
            height: height * 0.045,
            width: width * 0.36,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    spreadRadius: 0.5,
                    offset: Offset(0, 3))
              ],
              color: const Color(0xff4CB6AC),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              'Generate Resume',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.02,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    ],
    bottom: TabBar(
      indicatorColor: Colors.blue,
      unselectedLabelStyle: TextStyle(
        fontSize: height * 0.0238,
        fontWeight: FontWeight.w500,
        color: const Color(0xffA1DDD9),
      ),
      automaticIndicatorColorAdjustment: false,
      labelStyle: TextStyle(
        fontSize: height * 0.0238,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      tabAlignment: TabAlignment.start,
      isScrollable: true,
      tabs: const [
        Tab(text: 'Personal'),
        Tab(text: 'Education'),
        Tab(text: 'Skills'),
        Tab(text: 'About'),
        Tab(text: 'Experience'),
        Tab(text: 'Projects'),
        Tab(text: 'Certifications'),
        Tab(text: 'Languages'),
        Tab(text: 'Socials'),
      ],
    ),
  );
}
