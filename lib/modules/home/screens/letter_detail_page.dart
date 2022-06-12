import 'package:flutter/material.dart';
import 'package:heart_breaker_blog_app/config/themes/app_colors.dart';
import 'package:heart_breaker_blog_app/config/themes/app_text_styles.dart';
import 'package:heart_breaker_blog_app/src/models/comment.dart';
import 'package:heart_breaker_blog_app/src/models/post.dart';
import 'package:heart_breaker_blog_app/widgets/stless/reaction_bar.dart';

import '../widgets/detail_letter.dart';

class LetterDetailPage extends StatelessWidget {
  final Letter letter;
  const LetterDetailPage({Key? key, required this.letter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          DetailLetter(size: size, letter: letter),
          const SizedBox(
            height: 10,
          ),
          ReactionBar(size: size),
          const SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                decoration: const BoxDecoration(color: AppColors.primary),
                child: Column(
                    children: comments
                        .map((e) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width / 8,
                                    child: Image(
                                        image: AssetImage(e.imgPath!),
                                        fit: BoxFit.fill),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e.name,
                                          style: AppTextStyle.heading3Bold,
                                        ),
                                        Text(
                                          e.content,
                                          style: AppTextStyle.paragraph,
                                        )
                                      ]),
                                ],
                              ),
                            ))
                        .toList()),
              ))
        ],
      )),
    );
  }
}
