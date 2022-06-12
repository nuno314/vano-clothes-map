import 'package:flutter/material.dart';
import 'package:heart_breaker_blog_app/config/themes/app_text_styles.dart';
import 'package:heart_breaker_blog_app/modules/home/widgets/category_bar.dart';
import 'package:heart_breaker_blog_app/modules/home/widgets/header.dart';
import 'package:heart_breaker_blog_app/modules/home/widgets/letter_list.dart';
import 'package:heart_breaker_blog_app/modules/home/widgets/lettering_button.dart';
import 'package:heart_breaker_blog_app/modules/home/widgets/search_bar.dart';
import 'package:heart_breaker_blog_app/modules/home/widgets/slider_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeHeader(size: size),
          SearchBar(size: size),
          CategoryBar(size: size),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          SliderBar(size: size),
          // buildTitle('Posts'),
          LetteringButton(size: size),
          LetterList(size: size),
        ],
      )),
    );
  }

  Padding buildTitle(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 24,
      ),
      child: Text(
        content,
        style: AppTextStyle.heading2,
      ),
    );
  }
}
