import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent.shade700,
          title: const Text("Contact card",
          style: TextStyle(
            fontFamily: 'ARIAL',
            fontSize: 25,
          ),),
         centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const[
            CircleAvatar(
              backgroundImage: AssetImage("img/gojo.jpg"),
              backgroundColor: Colors.transparent,
              radius: 75,
            ),
            Text("Nguyen Thi Xuan Mai",
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'ARIAL',
              color: Colors.white,
            ),),
            Text("DEVELOPER",
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'ARIAL',
              letterSpacing: 2,
              color: Colors.white,
            ),),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                thickness: 1,
                color: Colors.pinkAccent,
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Nguyen Thi Xuan Mai"),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                leading: Icon(Icons.mail),
                title: Text("mai@gmail.com"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


