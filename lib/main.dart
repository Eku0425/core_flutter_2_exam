import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/homepage.dart';
import 'Screens/splashdart.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(//to fix statusebar color in app;
    statusBarColor: Colors.blueGrey,
  ));
  runApp(studentapp());//to run app
}
class studentapp extends StatelessWidget {
  const studentapp({super.key});

  @override
  Widget build(BuildContext context) {
    return studentAPP();
  }
}
class studentAPP extends StatefulWidget {
  const studentAPP({super.key});

  @override
  State<studentAPP> createState() => _studentAPPState();
}

class _studentAPPState extends State<studentAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Portal',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
