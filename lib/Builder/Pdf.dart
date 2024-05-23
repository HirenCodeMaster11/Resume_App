import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume_app/Builder/resumeBuilder.dart';

import '../utils/global.dart';

class PdfPreviewpage extends StatefulWidget {
  const PdfPreviewpage({super.key});

  @override
  State<PdfPreviewpage> createState() => _PdfPreviewpageState();
}

class _PdfPreviewpageState extends State<PdfPreviewpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => PdfView(),
      )
    );
  }
}

Future<Uint8List> PdfView()
async {
  final pdf = pw.Document();
  final image = pw.MemoryImage(
      fileImage!.readAsBytesSync());
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,

      build: (context) =>pw.Column(
        children: [
          pw.Row(
            children: [
              pw.Column(
                children: [
                  pw.Row(
                    children: [
                      pw.Container(
                        height: 260,
                        width: 180,
                        decoration: pw.BoxDecoration(
                          color: PdfColors.grey,
                          borderRadius: pw.BorderRadius.circular(15),
                        ),
                        child: pw.Padding(
                          padding: const pw.EdgeInsets.only(
                              left: 8, right: 8, top: 15),
                          child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Center(
                                child: pw.Container(
                                  height: 100,
                                  width: 100,
                                  decoration: pw.BoxDecoration(
                                    color: PdfColors.white,
                                    shape: pw.BoxShape.circle,
                                    image: pw.DecorationImage(
                                        fit: pw.BoxFit.cover,
                                        image: image,
                                  ),
                                ),
                              ),
                              ),
                              pw.SizedBox(
                                height: 20
                              ),
                              pw.Center(
                                  child: pw.Text(
                                    'Personal Info',
                                    style: pw.TextStyle(
                                        fontSize: 23,
                                        fontWeight: pw.FontWeight.bold),
                                  )
                              ),
                              pw.SizedBox(
                                  height: 16
                              ),
                              pw.Text(
                                '- $email',
                                style: pw.TextStyle(
                                    fontSize: 16,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                              pw.Text(
                                '- $mobile',
                                style: pw.TextStyle(
                                    fontSize: 16,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                              pw.Text(
                                '- $loc',
                                style: pw.TextStyle(
                                    fontSize: 16,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  pw.Row(
                    children: [
                      pw.Container(
                        height: 420,
                        width: 180,
                        decoration: pw.BoxDecoration(
                          borderRadius: pw.BorderRadius.circular(18),
                        ),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Center(
                              child: pw.Text(
                                'Education',
                                style: pw.TextStyle(
                                    fontSize: 23,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                            pw.SizedBox(
                              height: 16,
                            ),
                            pw.Text(
                              '- $institute',
                              style: pw.TextStyle(
                                 fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              '- Start Date : $eduStDate',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              '- End Date : $eduDate',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              '- Grade : $eduGrade',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              '- Description : $eduDes',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.SizedBox(
                              height: 16,
                            ),
                            pw.Center(
                              child: pw.Text(
                                'Skills',
                                style: pw.TextStyle(
                                    fontSize: 23,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                            pw.Text(
                              '- ${skills}C language\n- Cpp\n- Dart',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.SizedBox(
                              height: 16,
                            ),
                            pw.Center(
                              child: pw.Text(
                                'Certification',
                                style: pw.TextStyle(
                                    fontSize: 23,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                            pw.Text(
                              '- $course',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              '- $stDate',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              '- $eDate',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              '- $cerLink',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(left: 8.5),
                child: pw.Column(
                  children: [
                    pw.Container(
                      height: 356,
                      width: 180,
                      decoration: pw.BoxDecoration(
                        borderRadius: pw.BorderRadius.circular(18),
                      ),
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.only(left: 5),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(
                              '$name',
                              style: pw.TextStyle(
                                  fontSize: 30,
                                  fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Divider(thickness: 2,color: PdfColors.black,),
                            pw.Text(
                              '- $job',
                              style: pw.TextStyle(
                                  fontSize: 20,
                                  fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Center(
                              child: pw.Text(
                                'About',
                                style: pw.TextStyle(
                                    fontSize: 23, fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                            pw.Text(
                              '- $about',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    pw.Container(
                      height: 300,
                      width: 180,
                      decoration: pw.BoxDecoration(
                        color: PdfColors.grey,
                        borderRadius: pw.BorderRadius.circular(18),
                      ),
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.only(left: 5),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Center(
                              child: pw.Text(
                                'Experience',
                                style: pw.TextStyle(
                                    fontSize: 23, fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                            pw.Text(
                              '- ComName : $comName',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              '- ComRole : $role',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              '- Start Date : $comStDate',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              '- End Date - $comDate',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight:pw. FontWeight.bold),
                            ),
                            pw.Text(
                              '- Description : $comDes',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Center(
                              child: pw.Text(
                                'Project',
                                style: pw.TextStyle(
                                    fontSize: 23, fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                            pw.Text(
                              '- ProName - $proName',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              '- Start Date - $proStDate',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              '- End Date - $proDate',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              '- proLink - $proLink',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              '- Description - $proDes',
                              style: pw.TextStyle(
                                  fontSize: 16, fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Center(
                              child: pw.Text(
                                'Languages',
                                style: pw.TextStyle(
                                    fontSize: 23,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                            ...List.generate(
                              languages.length,
                                  (index) => pw.Text(
                                '- ${languages[index]}',
                                style: pw.TextStyle(
                                    fontSize: 16,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
  return pdf.save();
}