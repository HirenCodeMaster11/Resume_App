import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget TITLE(double height) {
  return Container(
    child: Row(
      children: [
        Text(
          'Resume Builder',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: height * 0.03),
        ),
      ],
    ),
  );
}
