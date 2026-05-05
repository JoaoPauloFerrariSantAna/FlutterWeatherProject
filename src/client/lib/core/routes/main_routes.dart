import 'package:client/core/screens/login_screen.dart';
import 'package:client/core/screens/home_page_screen.dart';
import 'package:client/core/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class _Route
{
  final String prefix;
  final Widget screen;

  const _Route({
    required this.prefix,
    required this.screen
  });
}

final mainRoutes = [
  _Route(prefix: "/", screen: const HomePageScreen(title: "Index")),
  _Route(prefix: "/register", screen: const RegisterScreen(title: "Registration")),
  _Route(prefix: "/login", screen: const LoginScreen(title: "Login"))
];  

final GoRouter router = GoRouter(
  initialLocation: mainRoutes[0].prefix,
  routes: [
    GoRoute(
      path: mainRoutes[0].prefix,
      builder: (ctx, state) => mainRoutes[0].screen
    ),
    GoRoute(
      path: mainRoutes[1].prefix,
      builder: (ctx, state) => mainRoutes[1].screen
    ),
    GoRoute(
      path: mainRoutes[2].prefix,
      builder: (ctx, state) => mainRoutes[2].screen
    )
  ]
);