import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vano_clothes_map/config/themes/app_colors.dart';
import 'package:vano_clothes_map/config/themes/app_text_styles.dart';
import 'package:vano_clothes_map/src/models/post.dart';

class SliderBar extends StatelessWidget {
  const SliderBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: posts
            .map((e) => Builder(
                  builder: (context) {
                    return Stack(children: [
                      Container(
                        width: size.width,
                        // height: size.height / 4,
                        padding: const EdgeInsets.only(
                          left: 10,
                          bottom: 24,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(e.imgPath),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                AppColors.secondary,
                              ],
                            )),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: size.width,
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.only(bottom: 8, left: 8),
                                child: Text(
                                  e.title,
                                  style: AppTextStyle.whiteHeading3Medium,
                                ),
                              ),
                              Container(
                                width: size.width,
                                alignment: Alignment.bottomRight,
                                padding: const EdgeInsets.only(
                                    bottom: 8, left: 8, right: 10),
                                child: Text(
                                  e.author,
                                  style: AppTextStyle.whiteHeading4,
                                ),
                              )
                            ]),
                      ),
                    ]);
                  },
                ))
            .toList(),
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
        ));
  }
}
