import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/global.dart';

GlobalKey<FormState> formKey = GlobalKey();

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding:
                      EdgeInsets.only(right: 120, top: 30, left: 10),
                      child: Text(
                        'About me',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    InkWell(
                      onTap: () {

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          alignment: Alignment.center,
                          height: height * 0.052,
                          width: width * 0.322,
                          decoration: BoxDecoration(
                              color: Color(0xff4FB4AC),
                              borderRadius: BorderRadius.circular(7)),
                          child: const Center(
                            child: Text(
                              'Save details',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                 SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 1.5,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: txtObjective,
                  minLines: 1,
                  maxLines: 9,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffDFDFDF),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const Text(
                  'Suggestions for you',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      ...List.generate(
                        Objectives.length,
                            (index) => InkWell(
                          onTap: () {
                            setState(() {
                              selectedObjective = index;
                              txtObjective = TextEditingController(text: '${Objectives[selectedObjective]}');
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 130,
                            width: 450,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white24,
                                border: Border.all(
                                    width: 2, color: Colors.black),
                                borderRadius: BorderRadius.circular(10)),
                            alignment: Alignment.center,
                            child: Text(
                              Objectives[index],
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
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
