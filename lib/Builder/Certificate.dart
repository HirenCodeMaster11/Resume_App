import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/global.dart';

GlobalKey<FormState> formKey = GlobalKey();

class Certification extends StatefulWidget {
  const Certification({super.key});

  @override
  State<Certification> createState() => _CertificationState();
}

class _CertificationState extends State<Certification> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      adding = false;
                    });
                  },
                  child: (adding)
                      ? Container(
                    margin: EdgeInsets.all(width * 0.02),
                    height: height * 0.052,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff4CB6AC),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding:
                      const EdgeInsets.only(left: 12, right: 12),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add Certification',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.add,
                            size: 25,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  )
                      : Padding(
                    padding:
                    EdgeInsets.only(left: 16, right: 16, top: 24),
                    child: SingleChildScrollView(
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'This Field Is Must Be Required';
                                }
                              },
                              controller: txtCourse,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: height * 0.014,
                                    horizontal: height * 0.012),
                                filled: true,
                                hintText: 'Course Name',
                                label: const Text('Course Name'),
                                labelStyle: const TextStyle(
                                    color: Color(0xff5C5C5C),
                                    fontSize: 19),
                                hintStyle: const TextStyle(
                                    color: Color(0xff5C5C5C),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                                fillColor: const Color(0xffE0E0E0),
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Color(0xffE0E0E0))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Color(0xffE0E0E0))),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.032,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter Start Date';
                                      }
                                    },
                                    controller: txtCerStDate,
                                    keyboardType:
                                    TextInputType.datetime,
                                    decoration: InputDecoration(
                                      contentPadding:
                                      EdgeInsets.symmetric(
                                          vertical:
                                          height * 0.014,
                                          horizontal:
                                          height * 0.012),
                                      filled: true,
                                      hintText: 'Start Date',
                                      label: const Text('Start Date'),
                                      labelStyle: const TextStyle(
                                          color: Color(0xff5C5C5C),
                                          fontSize: 19),
                                      hintStyle: const TextStyle(
                                          color: Color(0xff5C5C5C),
                                          fontSize: 20,
                                          fontWeight:
                                          FontWeight.w500),
                                      fillColor:
                                      const Color(0xffE0E0E0),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(
                                              10),
                                          borderSide:
                                          const BorderSide(
                                              color: Color(
                                                  0xffE0E0E0))),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(
                                              10),
                                          borderSide:
                                          const BorderSide(
                                              color: Color(
                                                  0xffE0E0E0))),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.06,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter End Date';
                                      }
                                    },
                                    controller: txtCerEDate,
                                    keyboardType:
                                    TextInputType.datetime,
                                    decoration: InputDecoration(
                                      contentPadding:
                                      EdgeInsets.symmetric(
                                          vertical:
                                          height * 0.014,
                                          horizontal:
                                          height * 0.012),
                                      filled: true,
                                      hintText: 'End Date',
                                      label: const Text('End Date'),
                                      labelStyle: const TextStyle(
                                          color: Color(0xff5C5C5C),
                                          fontSize: 19),
                                      hintStyle: const TextStyle(
                                          color: Color(0xff5C5C5C),
                                          fontSize: 20,
                                          fontWeight:
                                          FontWeight.w500),
                                      fillColor:
                                      const Color(0xffE0E0E0),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(
                                              10),
                                          borderSide:
                                          const BorderSide(
                                              color: Color(
                                                  0xffE0E0E0))),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(
                                              10),
                                          borderSide:
                                          const BorderSide(
                                              color: Color(
                                                  0xffE0E0E0))),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.032,
                            ),
                            TextFormField(
                              controller: txtCerLink,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'This Field Is Must Be Required';
                                }
                              },
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: height * 0.014,
                                    horizontal: height * 0.012),
                                filled: true,
                                hintText: 'Certificate Link',
                                label: const Text('Link'),
                                labelStyle: const TextStyle(
                                    color: Color(0xff5C5C5C),
                                    fontSize: 19),
                                hintStyle: const TextStyle(
                                    color: Color(0xff5C5C5C),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                                fillColor: const Color(0xffE0E0E0),
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Color(0xffE0E0E0))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Color(0xffE0E0E0))),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.032,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    course = txtCourse.text;
                                    stDate = txtCerStDate.text;
                                    eDate = txtCerEDate.text;
                                    cerLink = txtCerLink.text;
                                  },
                                  child: Container(
                                    height: height * 0.05,
                                    width: width * 0.442,
                                    decoration: BoxDecoration(
                                      color: Color(0xff4CB6AC),
                                      borderRadius:
                                      BorderRadius.circular(6),
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
                                ),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.442,
                                  decoration: BoxDecoration(
                                    color: Color(0xff2196F3),
                                    borderRadius:
                                    BorderRadius.circular(6),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Discard',
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

