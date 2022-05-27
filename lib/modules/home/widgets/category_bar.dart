import 'package:flutter/material.dart';

import '../../../config/themes/app_colors.dart';
import '../../../config/themes/app_text_styles.dart';
import '../../../src/models/post.dart';

class CategoryBar extends StatefulWidget {
  const CategoryBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<CategoryBar> createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height / 15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Container(
                  margin: const EdgeInsets.only(left: 16),
                  width: widget.size.width / 4,
                  alignment: Alignment.center,
                  decoration: _selectedIndex == index
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.darkBlue,
                        )
                      : const BoxDecoration(
                          color: Colors.transparent,
                        ),
                  child: Text(
                    genres[index],
                    style: _selectedIndex == index
                        ? AppTextStyle.whiteHeading3Medium
                        : AppTextStyle.heading3Medium,
                  )),
            );
          }),
    );
  }
}
