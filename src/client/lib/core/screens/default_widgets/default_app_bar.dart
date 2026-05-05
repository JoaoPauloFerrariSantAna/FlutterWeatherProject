import 'package:flutter/material.dart';

class _AppBarDefaultState extends State<AppBarDefault>
{
  final String title;

  _AppBarDefaultState({ required this.title });

  @override
  Widget build(BuildContext ctx) {
    return AppBar(title: Text(title));
  }
}

// https://stackoverflow.com/questions/53294006/how-to-create-a-custom-appbar-widget
class AppBarDefault extends StatefulWidget implements PreferredSizeWidget
{
  final String title;

  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);

  AppBarDefault({ super.key, required this.title });

  @override
  State<StatefulWidget> createState() {
    return _AppBarDefaultState(title: title);
  }
}