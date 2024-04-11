import 'package:flutter/material.dart';
import 'package:resume_app/screen/achievement/achivement.dart';
import 'package:resume_app/screen/carrier/carrier_screen.dart';
import 'package:resume_app/screen/contact/contact_screen.dart';
import 'package:resume_app/screen/declaration/declaration.dart';
import 'package:resume_app/screen/education/education_screen.dart';
import 'package:resume_app/screen/experiences/experiences.dart';
import 'package:resume_app/screen/home/home_screen.dart';
import 'package:resume_app/screen/interest/interest.dart';
import 'package:resume_app/screen/personal/personal_screen.dart';
import 'package:resume_app/screen/project/project.dart';
import 'package:resume_app/screen/splash/splash_screen.dart';

Map<String, WidgetBuilder> app_routes = {
  "/": (context) => SplashScreen(),
  "/home": (context) => HomeScreen(),
  "/contact": (context) => ContactScreen(),
  "/carrier": (context) => CarrierScreen(),
  "/pesonal": (context) => PersonalScreen(),
  "/education": (context) => EducationScreen(),
  "/experiences": (context) => ExperiencesScreen(),
  "/interest": (context) => InterestScreen(),
  "/project": (context) => ProjectScreen(),
  "/achievements": (context) => AchivementScreen(),
  "/declaration": (context) => DeclarationScreen(),
};
