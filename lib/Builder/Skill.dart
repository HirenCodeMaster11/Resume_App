import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/global.dart';

class Skill extends StatefulWidget {
  const Skill({super.key});

  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body : Padding(
        padding: EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                txtSkillControllerList.length,
                    (index) => ListTile(
                  title: TextField(
                    controller: txtSkillControllerList[index],
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: height * 0.014,
                          horizontal: height * 0.012),
                      filled: true,
                      hintText: 'Skill',
                      label: const Text('Skill'),
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
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: height * 0.06,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          color: Color(0xff80CBC4),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            TextEditingController txtSkillController =
                            TextEditingController();
                            setState(() {
                              txtSkillControllerList.add(txtSkillController);
                            });
                          },
                          child: Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.032,
                      ),
                      Container(
                        height: height * 0.06,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          color: Color(0xff80CBC4),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            TextEditingController txtSkillController =
                            TextEditingController();
                            setState(() {
                              index = txtSkillControllerList.length - 1;
                              if (txtSkillControllerList.length > 1) {
                                txtSkillControllerList.remove(
                                    txtSkillControllerList[index]);
                              }
                            });
                          },
                          child: Icon(
                            Icons.remove,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.012,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Container(
                      height: height * 0.05,
                      width: width * 0.440,
                      decoration: BoxDecoration(
                        color: Color(0xff2196F3),
                        borderRadius: BorderRadius.circular(6),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
