import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'About.dart';
import 'AppBarTitle.dart';
import 'Certificate.dart';
import 'Education.dart';
import 'Experience.dart';
import 'Language.dart';
import 'Personal.dart';
import 'Project.dart';
import 'Skill.dart';
import 'Social.dart';

GlobalKey<FormState> formKey = GlobalKey();

ImagePicker imagePicker = ImagePicker();
File? fileImage;

class builder extends StatefulWidget {
  const builder({super.key});

  @override
  State<builder> createState() => _builderState();
}

class _builderState extends State<builder> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
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
                onTap: () {
                  Navigator.of(context).pushNamed('/generate');
                },
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
        ),
        body: TabBarView(
          children: [
            //TODO - Personal
            PersonSreen(),
            //TODO - Education
            EducationScreen(),
            //TODO - Skill
            Skill(),
            //TODO - About Me
            AboutPage(),
            //TODO - Experience
            Experience(),
            //TODO - Project
            ProjectScreen(),
            //TODO - Certification
            Certification(),
            //TODO - Language
            Language(),
            //TODO - Social
            Social(),
          ],
        ),
      ),
    );
  }
}

bool adding = true;