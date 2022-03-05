import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../feature/auth/login/view/login_view.dart';
import '../feature/auth/register/view/register_view.dart';
import '../feature/splash/view/splash_view.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const SplashView(),
      ),
      GoRoute(
        path: '/register',
        builder: (BuildContext context, GoRouterState state) =>
            const RegisterView(),
      ),
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) =>
            const LoginView(),
      ),
    ],
  );
}
