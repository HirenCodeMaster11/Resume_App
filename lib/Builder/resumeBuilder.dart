import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/global.dart';
import 'Components/AppBar.dart';
import 'Components/Name and Email.dart';

GlobalKey<FormState> formKey = GlobalKey();

TextEditingController txtName = TextEditingController();
TextEditingController txtMobile = TextEditingController();
TextEditingController txtEmail = TextEditingController();
TextEditingController txtJob = TextEditingController();
TextEditingController txtLoc = TextEditingController();

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
            personal(height, context, width),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 24),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: height * 0.014, horizontal: height * 0.012),
                        filled: true,
                        hintText: 'Institute Name',
                        label: const Text('Institute Name'),
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
                    // ListTile(
                    //   title: TextField(
                    //     decoration: InputDecoration(
                    //       contentPadding: EdgeInsets.symmetric(
                    //           vertical: height * 0.014,
                    //           horizontal: height * 0.012),
                    //       filled: true,
                    //       hintText: 'Institute Name',
                    //       label: Text('Institute Name'),
                    //       labelStyle:
                    //           TextStyle(color: Color(0xff5C5C5C), fontSize: 19),
                    //       hintStyle: TextStyle(
                    //           color: Color(0xff5C5C5C),
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.w500),
                    //       fillColor: Color(0xffE0E0E0),
                    //       border: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(10),
                    //           borderSide: BorderSide(color: Color(0xffE0E0E0))),
                    //       focusedBorder: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(10),
                    //           borderSide: BorderSide(color: Color(0xffE0E0E0))),
                    //     ),
                    //   ),
                    //   trailing: Row(
                    //     mainAxisSize: MainAxisSize.min,
                    //     children: [
                    //       TextField(
                    //         decoration: InputDecoration(
                    //           contentPadding: EdgeInsets.symmetric(
                    //               vertical: height * 0.014,
                    //               horizontal: height * 0.012),
                    //           filled: true,
                    //           hintText: 'Institute Name',
                    //           label:  Text('Institute Name'),
                    //           labelStyle:  TextStyle(
                    //               color: Color(0xff5C5C5C), fontSize: 19),
                    //           hintStyle:  TextStyle(
                    //               color: Color(0xff5C5C5C),
                    //               fontSize: 20,
                    //               fontWeight: FontWeight.w500),
                    //           fillColor:  Color(0xffE0E0E0),
                    //           border: OutlineInputBorder(
                    //               borderRadius: BorderRadius.circular(10),
                    //               borderSide:
                    //               BorderSide(color: Color(0xffE0E0E0))),
                    //           focusedBorder: OutlineInputBorder(
                    //               borderRadius: BorderRadius.circular(10),
                    //               borderSide:
                    //               BorderSide(color: Color(0xffE0E0E0))),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(height: height*0.032,),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: height * 0.014, horizontal: height * 0.012),
                        filled: true,
                        hintText: 'Grade',
                        label: const Text('Grade'),
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
                    TextField(
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: height * 0.014, horizontal: height * 0.012),
                        filled: true,
                        hintText: 'Enter Description Hear',
                        label: const Text('Description'),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height*0.05,
                          width: width*0.442,
                          decoration: BoxDecoration(
                            color: Color(0xff4CB6AC),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          alignment: Alignment.center,
                          child: Text('Save details',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          height: height*0.05,
                          width: width*0.442,
                          decoration: BoxDecoration(
                            color: Color(0xff2196F3),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          alignment: Alignment.center,
                          child: Text('Discard',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    txtSkillControllerList.length,
                    (index) => ListTile(
                      title: TextField(
                        controller: txtSkillControllerList[0],
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
                                  txtSkillControllerList
                                      .add(txtSkillController);
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
                                    txtSkillControllerList
                                        .remove(txtSkillControllerList[index]);
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Form personal(double height, BuildContext context, double width) {
  return Form(
    key: formKey,
    child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
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
                height: height * 0.055,
                width: width * 0.45,
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
  );
}
