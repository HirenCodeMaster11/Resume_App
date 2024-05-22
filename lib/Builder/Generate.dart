import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_app/Builder/resumeBuilder.dart';
import 'package:resume_app/utils/global.dart';

class Pdf extends StatefulWidget {
  const Pdf({super.key});

  @override
  State<Pdf> createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF0F0F0),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Color(0xff006F66)),
        backgroundColor: Color(0xff009788),
        title: Text(
          'Pdf Preview',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('pdf');
                },
                child: Icon(
                  Icons.picture_as_pdf,
                  size: 32,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: height * 0.48,
                            width: width * 0.46,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Container(
                                      height: height * 0.18,
                                      width: width * 0.4,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                            image: FileImage(fileImage!)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.016,
                                  ),
                                  Center(
                                      child: Text(
                                    'Personal Info',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Text(
                                    '- $name',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: height * 0.003,
                                  ),
                                  Text(
                                    '- $email',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: height * 0.003,
                                  ),
                                  Text(
                                    '- $mobile',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: height * 0.003,
                                  ),
                                  Text(
                                    '- $loc',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: height * 0.003,
                                  ),
                                  Text(
                                    '- $job',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: height * 0.48,
                            width: width * 0.46,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: height*0.014,),
                                Center(
                                  child: Text('Education',style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(height: height*0.01,),
                                Text('- $institute',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),),
                                Text('- Start Date : $eduStDate',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),),
                                Text('- End Date : $eduDate',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),),
                                Text('- Grade : $eduGrade',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),),
                                Text('- $eduDes',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),),
                                SizedBox(height: height*0.01,),
                                Center(
                                  child: Text('Skills',style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(height: height*0.006,),
                                Text('- $eduDes',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [],
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
