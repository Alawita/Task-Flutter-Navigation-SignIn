import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sign_in/pages/home_page.dart';
import 'package:sign_in/pages/signed_in.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) {
      return const HomeScreen();
    },
  ),
  GoRoute(
    path: '/details',
    builder: (BuildContext context, GoRouterState state) {
      return SignedIn(
        username: state.extra as String,
      );
    },
  ),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
