import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/utils/global.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({super.key});

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.file(
                File("$path"),
                height: 500,
                width: 200,
              ),
              Text("$name"),
              Text("$email"),
              Text("$mobile"),
              Text("$add"),
              Text("$desp"),
              Text("$cd"),
              Text("$dob"),
              Text("$nationality"),
              Text("$degree"),
              Text("$college"),
              Text("$marks"),
              Text("$year"),
              Text("$marriedstatus"),
              Column(
                children: List.generate(
                  dataList.length,
                  (index) => Text(dataList[index]),
                ),
              ),
              Text("$despc"),
              Text("$date"),
              Text("$place"),
              Text("$project"),
              Text("$tech1"),
              Text("$tech2"),
              Text("$tech3"),
              Text("$roles"),
              Text("$tech"),
              Text("$pd"),
            ],
          ),
        ),
      ),
    );
  }
}
