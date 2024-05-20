
import 'package:flutter/material.dart';

TextFormField names(double height,TextEditingController? controller) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty) {
        return 'This Field Is Must Be Required';
      }
      return null;
    },

    controller: controller,
    keyboardType: TextInputType.name,
    cursorColor: Colors.blueAccent,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(
          vertical: height * 0.016, horizontal: height * 0.012),
      filled: true,
      hintText: 'Name',
      label: const Text('Name'),
      labelStyle: const TextStyle(color: Color(0xff5C5C5C), fontSize: 19),
      hintStyle: const TextStyle(
          color: Color(0xff5C5C5C),
          fontSize: 20,
          fontWeight: FontWeight.w500),
      fillColor: const Color(0xffE0E0E0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xffE0E0E0))),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xffE0E0E0))),
    ),
  );
}


TextFormField emails(double height,TextEditingController? controller) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty) {
        return 'Email or Phone is required';
      }
      if (!value.contains('@gmail.com')) {
        return 'Must Be Enter @gmail.com';
      }
      if (value.contains(' ')) {
        return 'Do not enter the sapce';
      }
      if (RegExp(r'[A-Z]').hasMatch(value)) {
        return 'Entre the must be uppercase required';
      }
      if (value.toString() == '@gmail.com') {
        return 'Example : abc@gmail.com';
      }
      if (value.length < 12) {
        return 'Email must be at least 12 characters';
      }
      return null;
    },

    controller: controller,
    keyboardType: TextInputType.emailAddress,
    cursorColor: Colors.blueAccent,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(
          vertical: height * 0.016, horizontal: height * 0.012),
      filled: true,
      hintText: 'E-mail',
      label: const Text('E-mail'),
      labelStyle:
      const TextStyle(color: Color(0xff5C5C5C), fontSize: 19),
      hintStyle: const TextStyle(
          color: Color(0xff5C5C5C),
          fontSize: 20,
          fontWeight: FontWeight.w500),
      fillColor: const Color(0xffE0E0E0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xffE0E0E0))),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xffE0E0E0))),
    ),
  );
}


Widget mobiles(double height,TextEditingController? controller) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty) {
        return 'This Field Is Must Be Required';
      }
      if (value.length != 10) {
        return 'Phone Number is 10 Digits';
      }
      return null;
    },
    controller: controller,
    keyboardType: TextInputType.phone,
    cursorColor: Colors.blueAccent,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(
          vertical: height * 0.016, horizontal: height * 0.012),
      filled: true,
      hintText: 'Mobile Number',
      label: const Text('Mobile Number'),
      labelStyle:
      const TextStyle(color: Color(0xff5C5C5C), fontSize: 19),
      hintStyle: const TextStyle(
          color: Color(0xff5C5C5C),
          fontSize: 20,
          fontWeight: FontWeight.w500),
      fillColor: const Color(0xffE0E0E0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xffE0E0E0))),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xffE0E0E0))),
    ),
  );
}


TextFormField Job(double height,TextEditingController? controller) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty) {
        return 'This Field Is Must Be Required';
      }
    },
    controller: controller,
    keyboardType: TextInputType.name,
    cursorColor: Colors.blueAccent,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(
          vertical: height * 0.016, horizontal: height * 0.012),
      filled: true,
      hintText: 'Job Title',
      label: const Text('Job Title'),
      labelStyle: const TextStyle(
        color: Color(0xff5C5C5C),
        fontSize: 19,
      ),
      hintStyle: const TextStyle(
          color: Color(0xff5C5C5C),
          fontSize: 20,
          fontWeight: FontWeight.w500),
      fillColor: const Color(0xffE0E0E0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:
          const BorderSide(color: Color(0xffE0E0E0))),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:
          const BorderSide(color: Color(0xffE0E0E0))),
    ),
  );
}
TextFormField location(double height,TextEditingController? controller) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty) {
        return 'This Field Is Must Be Required';
      }
      if (RegExp(r'[0-9]').hasMatch(value)) {
        return 'Entre the street num required';
      }
    },
    controller: controller,
    keyboardType: TextInputType.streetAddress,
    cursorColor: Colors.blueAccent,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(
          vertical: height * 0.016, horizontal: height * 0.012),
      filled: true,
      hintText: 'Location',
      label: const Text('Location'),
      labelStyle: const TextStyle(
          color: Color(0xff5C5C5C), fontSize: 19),
      hintStyle: const TextStyle(
          color: Color(0xff5C5C5C),
          fontSize: 20,
          fontWeight: FontWeight.w500),
      fillColor: const Color(0xffE0E0E0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:
          const BorderSide(color: Color(0xffE0E0E0))),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:
          const BorderSide(color: Color(0xffE0E0E0))),
    ),
  );
}