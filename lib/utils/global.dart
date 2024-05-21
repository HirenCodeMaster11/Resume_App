import 'package:flutter/cupertino.dart';

String name = '';
String email = '';
String mobile = '';
String loc = '';
String job = '';

TextEditingController txtSkillController = TextEditingController();

List<TextEditingController> txtSkillControllerList = [
  txtSkillController,
];

TextEditingController txtLanguageController = TextEditingController();

List<TextEditingController> txtLanguageControllerList = [
  txtLanguageController,
];

int index = 0;

String selectedObjective = 'Demo Txt';

List<String> Objectives = [
  'I am a hard working, honest individual. I am a good timekeeper, always willing to learn new skills. I am friendly, helpful and polite, have a good sense of humour. I am able to work independently in busy environments and also within a team setting.',
  'I am a punctual and motivated individual who is able to work in a busy environment and produce high standards of work. I am an excellent team worker and am able to take instructions from all levels and build up good working relationships with all colleagues.',
  'I am an enthusiastic, self-motivated, reliable, responsible and hard working person. I am a mature team worker and adaptable to all challenging situations. I am able to work well both in a team environment as well as using own initiative.',
  'I am a dedicated, organized and methodical individual. I have good interpersonal skills, am an excellent team worker and am keen and very willing to learn and develop new skills. I am reliable and dependable and often seek new responsibilities',
  'I’m a nice fun and friendly person, I’m honest and punctual, I work well in a team but also on my own as I like to set myself goals which I will achieve, I have good listening and communication skills. I have a creative mind and am always up for new challenges.',
];

bool adding = true;
List Language = [
  // 'Portuguese',
  // 'English',
  // 'Gujrati',
  // 'Hindi',
  // 'Sanskrit',
  // 'Bulgarian',
  // 'French',
  // 'Albanian	',
  // 'German',
  // 'Aymara',
  // 'Guaraní',
  // 'Quechua',
  // 'Spanish'
];

List addLanguage = [];
String? selectedLanguage;


TextEditingController txtName = TextEditingController();
TextEditingController txtMobile = TextEditingController();
TextEditingController txtEmail = TextEditingController();
TextEditingController txtJob = TextEditingController();
TextEditingController txtLoc = TextEditingController();


TextEditingController txtInst = TextEditingController();
TextEditingController txtGrade = TextEditingController();
TextEditingController txtStDate = TextEditingController();
TextEditingController txtEDate = TextEditingController();


TextEditingController txtObjective = TextEditingController();
TextEditingController txtLanguage = TextEditingController();

TextEditingController txtCom = TextEditingController();
TextEditingController txtRole = TextEditingController();
TextEditingController txtComStDate = TextEditingController();
TextEditingController txComEDate = TextEditingController();

TextEditingController txtPro = TextEditingController();
TextEditingController txtLink = TextEditingController();
TextEditingController txtProStDate = TextEditingController();
TextEditingController txtProEDate = TextEditingController();

TextEditingController txtCourse = TextEditingController();
TextEditingController txtCerLink = TextEditingController();
TextEditingController txtCerStDate = TextEditingController();
TextEditingController txtCerEDate = TextEditingController();