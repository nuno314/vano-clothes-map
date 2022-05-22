import 'package:firebase/screens/homepage/homepage_screen.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat',
      theme: ThemeData(
        fontFamily: 'RobotoMono',
        primarySwatch: Colors.lightBlue,
        primaryColor: Color(0xffEFCFD4),
      ),
      home: HomePageScreen(),
    );
  }
}
