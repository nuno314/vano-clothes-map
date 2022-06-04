import 'package:flutter/material.dart';
import 'package:heart_breaker_blog_app/config/themes/app_text_styles.dart';

class ReactionBar extends StatelessWidget {
  const ReactionBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width / 4,
            height: size.height / 20,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: const AssetImage('assets/images/in-love.png'),
                    width: size.width / 15,
                  ),
                  const Text(
                    'Love',
                    style: AppTextStyle.heading3Medium,
                  ),
                ]),
          ),
          Container(
            width: size.width / 4,
            height: size.height / 20,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.chat_bubble_outline),
                  Text(
                    'Ease',
                    style: AppTextStyle.heading3Medium,
                  ),
                ]),
          ),
          Container(
            width: size.width / 4,
            height: size.height / 20,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.healing_outlined,
                    color: Colors.green,
                    size: size.width / 15,
                  ),
                  const Text(
                    'Heal',
                    style: AppTextStyle.heading3Medium,
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
