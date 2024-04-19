import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/utils/global.dart';
import 'package:resume_app/utils/pdf_helper.dart';

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.file(
                      File("$path"),
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    Text("$name"),
                  ],
                ),
              ),
              Divider(),
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
      floatingActionButton: FloatingActionButton(onPressed: () {
        pdf();
      },child: Icon(Icons.download),),
    );
  }
}
