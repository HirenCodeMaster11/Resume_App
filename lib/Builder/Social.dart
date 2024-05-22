import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/utils/global.dart';

GlobalKey<FormState> formKey = GlobalKey();

class Social extends StatefulWidget {
  const Social({super.key});

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 12,right: 12,top: 18),
          child: Column(
            children: [
              Form(
                key: formKey,
                child: TextFormField(
                  controller: txtInsta,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: height * 0.014,
                        horizontal: height * 0.012),
                    filled: true,
                    hintText: 'Instagram link',
                    label: const Text('Instagram Link'),
                    labelStyle: const TextStyle(
                        color: Color(0xff5C5C5C), fontSize: 19),
                    hintStyle: const TextStyle(
                        color: Color(0xff5C5C5C),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    fillColor: const Color(0xffE0E0E0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        const BorderSide(color: Color(0xffE0E0E0))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        const BorderSide(color: Color(0xffE0E0E0))),
                  ),
                ),
              ),
              SizedBox(height: height*0.032,),
              TextFormField(
                controller: txtTwi,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: height * 0.014,
                      horizontal: height * 0.012),
                  filled: true,
                  hintText: 'Twitter link',
                  label: const Text('Twitter Link'),
                  labelStyle: const TextStyle(
                      color: Color(0xff5C5C5C), fontSize: 19),
                  hintStyle: const TextStyle(
                      color: Color(0xff5C5C5C),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  fillColor: const Color(0xffE0E0E0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(color: Color(0xffE0E0E0))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(color: Color(0xffE0E0E0))),
                ),
              ),
              SizedBox(height: height*0.032,),
              TextFormField(
                controller: txtGit,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: height * 0.014,
                      horizontal: height * 0.012),
                  filled: true,
                  hintText: 'Github link',
                  label: const Text('Github Link'),
                  labelStyle: const TextStyle(
                      color: Color(0xff5C5C5C), fontSize: 19),
                  hintStyle: const TextStyle(
                      color: Color(0xff5C5C5C),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  fillColor: const Color(0xffE0E0E0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(color: Color(0xffE0E0E0))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(color: Color(0xffE0E0E0))),
                ),
              ),
              SizedBox(height: height*0.032,),
              TextFormField(
                controller: txtLinked,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: height * 0.014,
                      horizontal: height * 0.012),
                  filled: true,
                  hintText: 'Linkedin link',
                  label: const Text('Linkedin Link'),
                  labelStyle: const TextStyle(
                      color: Color(0xff5C5C5C), fontSize: 19),
                  hintStyle: const TextStyle(
                      color: Color(0xff5C5C5C),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  fillColor: const Color(0xffE0E0E0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(color: Color(0xffE0E0E0))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(color: Color(0xffE0E0E0))),
                ),
              ),
              SizedBox(height: height*0.032,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.05,
                    width: width * 0.440,
                    decoration: BoxDecoration(
                      color: Color(0xff4CB6AC),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Save details',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
