import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  bool isContact = true;
  bool isPhoto =false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffededed),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          title: const Text(
            "Resume Workspace",
            style: TextStyle(fontSize: 25),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isContact = true;
                        isPhoto = false;
                      });
                    },
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.amber, width: (isContact == true)?3:0))),
                      child: const Text(
                        "Contact",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isContact = false;
                        isPhoto = true;
                      });
                    },
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.amber, width: (isPhoto == false)?0:3))),
                      child: const Text(
                        "Photo",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            Visibility(
              visible: isContact,
              child: Container(
                height: 350,
                color: Colors.white,
                padding: EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                child: const SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          label: Text("name"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text("Email"),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email)),
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: Text("Mobile"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.phone_android),
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            label: Text("Passwords"),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: Icon((Icons.remove_red_eye))),
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text("Address (Street,Building no)"),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.location_on)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: isPhoto,
              child: Container(
                height: 200,
                alignment: Alignment.center,
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 70,
                      child: Text("ADD",style: TextStyle(color: Colors.black,fontSize: 20),),
                    ),
                    Align(
                      alignment: const Alignment(0.3, 0.5),
                      child: Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: const Icon(Icons.add)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
