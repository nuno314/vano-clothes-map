import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:heart_breaker_blog_app/config/routes/routes.dart';
import 'package:heart_breaker_blog_app/config/themes/app_colors.dart';
import 'package:heart_breaker_blog_app/modules/home/screens/home_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          primarySwatch: Colors.yellow,
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: AppColors.background,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: AppColors.secondary,
                displayColor: AppColors.secondary,
              )),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
