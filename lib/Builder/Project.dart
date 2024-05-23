import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/global.dart';

GlobalKey<FormState> formKey = GlobalKey();

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
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
                            'Add Project',
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
                              controller: txtPro,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: height * 0.014,
                                    horizontal: height * 0.012),
                                filled: true,
                                hintText: 'Project Name',
                                label: const Text('Project Name'),
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
                            TextFormField(
                              controller: txtLink,
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
                                hintText: 'Project link',
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
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter Start Date';
                                      }
                                    },
                                    controller: txtProStDate,
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
                                    controller: txtProEDate,
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
                            TextField(
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 5,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: height * 0.014,
                                    horizontal: height * 0.012),
                                filled: true,
                                hintText: 'Enter Description Hear',
                                label: const Text('Description'),
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
                                    proName = txtPro.text;
                                    proStDate= txtProStDate.text;
                                    proDate = txtProEDate.text;
                                    proLink = txtLink.text;
                                    proDes = txtProDes.text;
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

