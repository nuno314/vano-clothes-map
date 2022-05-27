import 'package:flutter/cupertino.dart';
import 'package:vano_clothes_map/config/themes/app_colors.dart';

class AppTextStyle {
  static const heading1 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 30, height: 1.2);

  static const heading2 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 24, height: 1.2);

  static const heading3 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 20, height: 1.2);

  static const heading4 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 16, height: 1.2);

  static const headingSemiBold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
  );

  static const heading3Medium =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 20);
  static const whiteHeading3Medium = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 20, color: AppColors.primary);
  static const whiteHeading4 = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.primary);
}
