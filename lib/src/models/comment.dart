class Comment {
  final String name;
  final String content;
  final String? imgPath;
  const Comment({required this.name, required this.content, String? imgPath})
      : imgPath = imgPath ?? 'assets/images/profile.png';
}

final List<Comment> comments = [
  const Comment(name: 'TinLe', content: 'Đừng bùn nữa nha..'),
  const Comment(name: 'Như Péo', content: 'Hãy dzui lên nào!'),
  const Comment(name: 'Nhi', content: 'Haha hài hước quá.'),
];
