import 'package:flutter/material.dart';
import 'package:vano_clothes_map/modules/home/widgets/category_bar.dart';
import 'package:vano_clothes_map/modules/home/widgets/header.dart';
import 'package:vano_clothes_map/modules/home/widgets/search_bar.dart';
import 'package:vano_clothes_map/modules/home/widgets/slider_bar.dart';

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
          SliderBar(size: size)
        ],
      )),
    );
  }
}
