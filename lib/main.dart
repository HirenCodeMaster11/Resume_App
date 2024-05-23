import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:printing/printing.dart';
import 'package:resume_app/Builder/Pdf.dart';

import 'Builder/Generate.dart';
import 'Builder/resumeBuilder.dart';
import 'SplashScreen/SplashScreen.dart';

void main() {
  runApp(const ResumeApp());
}

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.grey),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/builder': (context) => const builder(),
        '/generate' :(context) => Pdf(),
        '/PdfPreview' : (context) => PdfPreviewpage(),
      },
    );
  }
}
