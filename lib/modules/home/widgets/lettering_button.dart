import 'package:flutter/material.dart';
import 'package:heart_breaker_blog_app/config/themes/app_colors.dart';
import 'package:heart_breaker_blog_app/config/themes/app_text_styles.dart';
import 'package:heart_breaker_blog_app/modules/home/screens/lettering_page.dart';

class LetteringButton extends StatelessWidget {
  const LetteringButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LetteringPage(),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 32,
        ),
        child: Container(
            width: size.width,
            height: size.height / 15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.darkBlue),
            child: const Center(
              child: Text(
                'Lettering',
                style: AppTextStyle.whiteHeading3Medium,
              ),
            )),
      ),
    );
  }
}
