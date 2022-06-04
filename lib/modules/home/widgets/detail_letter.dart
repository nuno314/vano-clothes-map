import 'package:flutter/material.dart';
import 'package:heart_breaker_blog_app/config/themes/app_colors.dart';
import 'package:heart_breaker_blog_app/src/models/post.dart';

import '../../../config/themes/app_text_styles.dart';

class DetailLetter extends StatelessWidget {
  const DetailLetter({
    Key? key,
    required this.size,
    required this.letter,
  }) : super(key: key);

  final Size size;
  final Letter letter;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height / 2,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(letter.imgPath),
              ),
              gradient: const LinearGradient(
                colors: [
                  AppColors.softBlue,
                  AppColors.darkBlue,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
        ),
        SizedBox(
          height: size.height / 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            letter.author,
            style: AppTextStyle.heading1Bold,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            letter.title,
            style: AppTextStyle.heading1,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            letter.content,
            style: AppTextStyle.paragraph,
          ),
        ),
      ],
    );
  }
}
