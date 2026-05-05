import 'package:client/core/routes/main_routes.dart';
import 'package:client/core/screens/default_widgets/default_app_bar.dart';
import 'package:client/core/screens/default_widgets/default_link_button.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  final String title;

  const HomePageScreen({ super.key, required this.title });

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBarDefault(title: "Index"),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            new LinkButtonDefault(text: "Register", prefix: mainRoutes[1].prefix),
            new LinkButtonDefault(text: "Login", prefix: mainRoutes[2].prefix)
          ]
        ),
      ),
    );
  }
}