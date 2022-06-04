import 'package:flutter/material.dart';
import 'package:vano_clothes_map/config/themes/app_text_styles.dart';
import 'package:vano_clothes_map/src/models/post.dart';

class PostList extends StatelessWidget {
  const PostList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: false,
      shrinkWrap: true,
      children: posts
          .map((e) => Builder(
                builder: (context) {
                  return Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            e.author,
                            style: AppTextStyle.heading2,
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
                        Text(
                          e.title,
                          style: AppTextStyle.heading2,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          e.content,
                          style: AppTextStyle.heading3,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [],
                        )
                      ],
                    ),
                  );
                },
              ))
          .toList(),
    );
  }
}
