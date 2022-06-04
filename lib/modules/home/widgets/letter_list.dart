import 'package:flutter/material.dart';
import 'package:heart_breaker_blog_app/config/themes/app_text_styles.dart';
import 'package:heart_breaker_blog_app/src/models/post.dart';
import 'package:heart_breaker_blog_app/widgets/stless/reaction_bar.dart';

class LetterList extends StatelessWidget {
  const LetterList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
        primary: false,
        shrinkWrap: true,
        children: posts
            .map((e) => Builder(
                  builder: (context) {
                    return Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 10),
                            child: Text(
                              e.author,
                              style: AppTextStyle.heading2Bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            e.imgPath,
                            fit: BoxFit.fitWidth,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 10),
                            child: Text(
                              e.title,
                              style: AppTextStyle.heading2,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 10),
                            child: Text(
                              e.content,
                              style: AppTextStyle.heading3,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ReactionBar(size: size),
                        ],
                      ),
                    );
                  },
                ))
            .toList(),
      ),
    );
  }
}
