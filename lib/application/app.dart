import 'package:code_you/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => HomePage(),
        routes: <RouteBase>[
          // GoRoute(
          //   path: 'details',
          //   builder: (BuildContext context, GoRouterState state) {
          //     return const DetailsScreen();
          //   },
          // ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        routerConfig: _router);
  }
}
