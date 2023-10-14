import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.indigo,
          title: Text('Contact Me', style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings, color: Colors.white))
          ]),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              alignment: Alignment.center,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: CircleAvatar(
                    child: Icon(Icons.person, size: 70),
                    backgroundColor: Colors.white,
                    radius: 60,
                  ),
                ),
                Text('Mohamed Elhussieny',
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(
                  height: 10,
                ),
                Text('Flutter Devoloper',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.60), fontSize: 22)),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 3,
                  width: 180,
                  child: Divider(
                    thickness: 1,
                    color: Colors.white.withOpacity(0.60),
                  ),
                )
              ]),
            ),
            MyWidget(icon: Icons.phone, text: '0102938365'),
            MyWidget(icon: Icons.email, text: 'melhussieny@gmail.com'),
            MyWidget(icon: Icons.facebook, text: 'mohamed elhussieny'),
          ]),
    );
  }
}

Widget MyWidget({
  required IconData icon,
  required String text,
}) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 20,
    ),
    margin: EdgeInsets.only(right: 20, left: 20, bottom: 25, top: 8),
    width: double.infinity,
    height: 70,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(15)),
    child: Row(children: [
      Icon(icon, color: Colors.indigo),
      SizedBox(
        width: 40,
      ),
      Text(
        text,
        style: TextStyle(color: Colors.indigo, fontSize: 18),
      )
    ]),
  );
}
