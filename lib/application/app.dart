import 'package:code_you/application/domain/user_state.dart';
import 'package:code_you/features/authorization/user__auth_form.dart';
import 'package:code_you/presentation/home_page.dart';
import 'package:code_you/presentation/ide_page.dart';
import 'package:code_you/presentation/search_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const HomePage(),
        routes: <RouteBase>[
          GoRoute(
            path: 'auth',
            builder: (BuildContext context, GoRouterState state) {
              return const UserAuthForm();
            },
          ),
          GoRoute(
            path: 'search',
            builder: (BuildContext context, GoRouterState state) {
              return const SearchPage();
            },
          ),
          GoRoute(
            path: 'ide',
            builder: (BuildContext context, GoRouterState state) {
              return const IdePage();
            },
          )
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserState>(
      create: (context) => UserState(),
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(useMaterial3: true),
          routerConfig: _router),
    );
  }
}
