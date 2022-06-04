import 'package:flutter/material.dart';

class Reaction {
  final Widget icon;
  final Widget? title;
  final Widget previewIcon;
  final String value;
  Reaction(
      {required this.value,
      required this.icon,
      required this.title,
      Widget? previewIcon})
      : previewIcon = previewIcon ?? icon;

  @override
  bool operator ==(Object? object) {
    return object != null &&
        object is Reaction &&
        icon == object.icon &&
        icon.key == object.icon.key &&
        previewIcon == object.previewIcon &&
        previewIcon.key == object.previewIcon.key &&
        title == object.title &&
        title?.key == object.title?.key;
  }

  @override
  int get hashCode {
    return hashValues(icon, previewIcon, title);
  }
}

final reactions = [
  Reaction(
    value: 'Happy',
    title: _buildTitle('Happy'),
    icon: _buildReactionsIcon(
      'assets/images/happy.png',
      const Text(
        'Happy',
        style: TextStyle(
          color: Color(0XFF3b5998),
        ),
      ),
    ),
  ),
  Reaction(
    value: 'Angry',
    title: _buildTitle('Angry'),
    icon: _buildReactionsIcon(
      'assets/images/angry.png',
      const Text(
        'Angry',
        style: TextStyle(
          color: Color(0XFFed5168),
        ),
      ),
    ),
  ),
  Reaction(
    value: 'In love',
    title: _buildTitle('In love'),
    icon: _buildReactionsIcon(
      'assets/images/in-love.png',
      const Text(
        'In love',
        style: TextStyle(
          color: Color(0XFFffda6b),
        ),
      ),
    ),
  ),
  Reaction(
    value: 'Sad',
    title: _buildTitle('Sad'),
    icon: _buildReactionsIcon(
      'assets/images/sad.png',
      const Text(
        'Sad',
        style: TextStyle(
          color: Color(0XFFffda6b),
        ),
      ),
    ),
  ),
  Reaction(
    value: 'Surprised',
    title: _buildTitle('Surprised'),
    icon: _buildReactionsIcon(
      'assets/images/surprised.png',
      const Text(
        'Surprised',
        style: TextStyle(
          color: Color(0XFFffda6b),
        ),
      ),
    ),
  ),
  Reaction(
    value: 'Mad',
    title: _buildTitle('Mad'),
    icon: _buildReactionsIcon(
      'assets/images/mad.png',
      const Text(
        'Mad',
        style: TextStyle(
          color: Color(0XFFf05766),
        ),
      ),
    ),
  ),
];

Container _buildReactionsIcon(String path, Text text) {
  return Container(
    color: Colors.transparent,
    child: Row(
      children: <Widget>[
        Image.asset(path, height: 20),
        const SizedBox(width: 5),
        text,
      ],
    ),
  );
}

Container _buildTitle(String title) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 7.5, vertical: 2.5),
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 10,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
