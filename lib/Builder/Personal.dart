import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/global.dart';
import 'resumeBuilder.dart';
import 'Name and Email.dart';

GlobalKey<FormState> formKey = GlobalKey();

class PersonSreen extends StatefulWidget {
  const PersonSreen({super.key});

  @override
  State<PersonSreen> createState() => _PersonSreenState();
}

class _PersonSreenState extends State<PersonSreen> {



  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:  Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.03,
                ),
                CircleAvatar(
                  radius: 84,
                  backgroundColor: Color(0xffE0E0E0),
                  backgroundImage:
                  (fileImage != null) ? FileImage(fileImage!) : null,
                ),
                SizedBox(
                  height: height * 0.032,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () async {
                        XFile? xFileImage = await imagePicker.pickImage(
                            source: ImageSource.camera);
                        setState(() {
                          fileImage = File(xFileImage!.path);
                        });
                      },
                      child: Container(
                        height: height * 0.054,
                        width: width * 0.38,
                        decoration: BoxDecoration(
                          color: Color(0xffE0E0E0),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding:
                          const EdgeInsets.only(left: 12, right: 12),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Camera',
                                style: TextStyle(
                                    color: Color(0xff5C5C5C),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 23),
                              ),
                              Icon(
                                CupertinoIcons.camera_fill,
                                color: Color(0xff5C5C5C),
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        XFile? XFileImage = await imagePicker.pickImage(
                            source: ImageSource.gallery);
                        setState(() {
                          fileImage = File(XFileImage!.path);
                        });
                      },
                      child: Container(
                        height: height * 0.054,
                        width: width * 0.38,
                        decoration: BoxDecoration(
                          color: Color(0xffE0E0E0),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding:
                          const EdgeInsets.only(left: 12, right: 12),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Gallery',
                                style: TextStyle(
                                    color: Color(0xff5C5C5C),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 23),
                              ),
                              Icon(
                                Icons.image,
                                color: Color(0xff5C5C5C),
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.032,
                ),
                names(height, txtName),
                SizedBox(
                  height: height * 0.03,
                ),
                emails(height, txtEmail),
                SizedBox(
                  height: height * 0.03,
                ),
                mobiles(height, txtMobile),
                SizedBox(
                  height: height * 0.03,
                ),
                location(height, txtLoc),
                SizedBox(
                  height: height * 0.03,
                ),
                Job(height, txtJob),
                SizedBox(
                  height: height * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    bool responce = formKey.currentState!.validate();
                    if (responce) {
                      name = txtName.text;
                      email = txtEmail.text;
                      mobile = txtMobile.text;
                      loc = txtLoc.text;
                      job = txtJob.text;
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Enter Valid Input'),
                          action: SnackBarAction(
                            label: 'Retry',
                            onPressed: () {
                              formKey.currentState!.reset();
                            },
                          ),
                          duration: const Duration(seconds: 6),
                        ),
                      );
                    }
                  },
                  child: Container(
                    height: height * 0.048,
                    width: width * 0.44,
                    decoration: BoxDecoration(
                      color: const Color(0xff009788),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Save Details',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
