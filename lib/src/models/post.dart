import 'package:flutter/material.dart';

abstract class Post {
  String get author;
  String get title;
  String get content;
}

class Letter implements Post {
  @override
  String author;

  @override
  String content;

  @override
  String title;

  String imgPath;

  Letter({
    required this.author,
    required this.content,
    required this.title,
    required this.imgPath,
  });
}

final List<String> genres = [
  'Quotes',
  'Lyrics',
  'Film',
  'Song',
  'Image',
  'Video',
];

final List<Letter> posts = [
  Letter(
    author: 'Nuno',
    title: 'Welcome to Heartbroken',
    content: 'First init: 28/05/2022.',
    imgPath: 'assets/images/post_1.png',
  ),
  Letter(
    author: 'Blue Sky',
    title: 'Who name this blog?',
    content: "It's me.",
    imgPath: 'assets/images/post_2.png',
  )
];