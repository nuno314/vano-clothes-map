import 'package:flutter/material.dart';
import 'package:vano_clothes_map/config/themes/app_text_styles.dart';
import 'package:vano_clothes_map/modules/home/widgets/category_bar.dart';
import 'package:vano_clothes_map/modules/home/widgets/header.dart';
import 'package:vano_clothes_map/modules/home/widgets/post_list.dart';
import 'package:vano_clothes_map/modules/home/widgets/search_bar.dart';
import 'package:vano_clothes_map/modules/home/widgets/slider_bar.dart';
import 'package:vano_clothes_map/src/models/post.dart';

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
          const PostList(),
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
