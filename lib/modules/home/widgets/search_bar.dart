import 'package:flutter/material.dart';
import 'package:heart_breaker_blog_app/config/themes/app_colors.dart';
import 'package:heart_breaker_blog_app/config/themes/app_text_styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: SizedBox(
        height: size.height / 15,
        child: Row(children: [
          Expanded(
            child: Container(
              height: size.height / 15,
              decoration: BoxDecoration(
                color: AppColors.softBlue,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Row(children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Icon(
                    Icons.search_outlined,
                    size: 32,
                    color: AppColors.darkBlue,
                  ),
                ),
                Expanded(
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: 'Your emotion',
                    hintStyle: AppTextStyle.heading3Medium,
                    border: InputBorder.none,
                  )),
                )
              ]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16),
            width: size.height / 15,
            height: size.height / 15,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.secondary,
                    AppColors.darkBlue,
                  ],
                ),
                borderRadius: BorderRadius.circular(14)),
            child: Icon(
              Icons.navigate_next_outlined,
              color: AppColors.softBlue,
            ),
          )
        ]),
      ),
    );
  }
}
