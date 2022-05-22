import 'package:flutter/material.dart';

class HomePageAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomePageAppBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  _HomePageAppBarState createState() => _HomePageAppBarState();

  @override
  // TODO: implement preferredSize
  final Size preferredSize;
}

class _HomePageAppBarState extends State<HomePageAppBar> {
  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Text('VANO'),
      backgroundColor: Color(0xffEFCFD4),
    );
  }
}
