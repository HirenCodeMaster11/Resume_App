import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/global.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff4CB6AC),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...List.generate(
                          language.length,
                              (index) => CheckboxListTile(
                            checkColor: Colors.white,
                            activeColor: Colors.blue,
                            value: language[index],
                            title: Text('${languagenames[index]}',style: TextStyle(color: Colors.white,fontSize: 22),),
                            onChanged: (value) {
                              setState(() {
                                language[index] = value;
                              });
                              if(value == true)
                              {
                                languages.add(languagenames[index]);
                              }
                              else{
                                languages.remove(languagenames[index]);
                              }
                            },
                          ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * 0.05,
            width: width * 0.440,
            decoration: BoxDecoration(
              color: Colors.blue,
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
      )
    );
  }
}
