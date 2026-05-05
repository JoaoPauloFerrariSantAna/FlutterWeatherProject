// a link is just something that changes the screen

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LinkButtonDefault extends StatelessWidget
{
  final String text;
  final String prefix;

  const LinkButtonDefault({
    super.key,
    required this.text,
    required this.prefix
  });

  @override
  Widget build(BuildContext ctx) {
    return ElevatedButton(
      onPressed: () => ctx.go(this.prefix),
      child: Text(this.text)
    );
  }
}