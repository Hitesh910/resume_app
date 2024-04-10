import 'package:flutter/material.dart';
import 'package:resume_app/screen/carrier/carrier_screen.dart';
import 'package:resume_app/screen/contact/contact_screen.dart';

List<Map> tileList = [
  {
    "name": "Contact info",
    "icon": Icons.add,
    "routes": '/contact',
  }
  ,
  {
    "name": "Carrier info",
    "icon": Icons.cases_outlined,
    "routes": '/carrier',
  },
  {
    "name": "Personal Details",
    "icon": Icons.person,
    "routes": '/carrier',
  }
  ,
  {
    "name": "Education",
    "icon": Icons.book,
    "routes": '/education',
  },
  {
    "name": "Experiences",
    "icon": Icons.expand_circle_down,
    "routes": '/experiences',
  },
  {
    "name": "Technical Skills",
    "icon": Icons.bookmark_added,
    "routes": '/technical',
  },
  {
    "name": "Interest/Hobbies",
    "icon": Icons.menu_book_outlined,
    "routes": '/interest',
  },
  {
    "name": "Projects",
    "icon": Icons.calendar_month_rounded,
    "routes": '/project',
  },
  {
    "name": "Achivement",
    "icon": Icons.cabin,
    "routes": '/achievement',
  },
  {
    "name": "References",
    "icon": Icons.handshake,
    "routes": '/references',
  },
  {
    "name":"Declaration",
    "icon": Icons.insert_chart,
    "routes": '/references',
  },

];