import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app/utils/global.dart';
import 'About.dart';
import 'AppBar.dart';
import 'Certificate.dart';
import 'Education.dart';
import 'Experience.dart';
import 'Personal.dart';
import 'Project.dart';
import 'Skill.dart';

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
        appBar: appBar(height, width),
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
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 12,right: 12,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height*0.06,
                      width: width*1,
                      decoration: BoxDecoration(
                        color: Color(0xffE0E0E0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: height*0.014),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DropdownButton<String>(
                              style: TextStyle(fontSize: 20,color: Colors.black),
                              value: selectedLanguage,
                              items: [
                                DropdownMenuItem(
                                  child: Text('English'),
                                  value: 'English',
                                ),
                                DropdownMenuItem(
                                  child: Text('Hindi'),
                                  value: 'Hindi',
                                ),
                                DropdownMenuItem(
                                  child: Text('Gujarati'),
                                  value: 'Gujarati',
                                ),
                                DropdownMenuItem(
                                  child: Text('French'),
                                  value: 'French',
                                ),
                                DropdownMenuItem(
                                  child: Text('Portugal'),
                                  value: 'Portugal',
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  selectedLanguage = value;
                                });
                              },
                            ),
                            GestureDetector(
                              onTap: () {
                                if (selectedLanguage != null) {
                                  setState(() {
                                    Language.add(selectedLanguage!);
                                  });
                                }
                              },
                              child: Container(
                                height: height*0.046,
                                width: width*0.1,
                                decoration: BoxDecoration(
                                  color: Color(0xff4FB4AC),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool adding = true;
