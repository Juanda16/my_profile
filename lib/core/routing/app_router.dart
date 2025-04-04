import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/portfolio/presentation/pages/home_page.dart';
// Import other pages if you create separate ones

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(), // Your main page

        // Add routes for /services, /contact if they become separate pages
        // routes: <RouteBase>[
        //   GoRoute(
        //     path: 'services',
        //     builder: (BuildContext context, GoRouterState state) {
        //       return const ServicesPage();
        //     },
        //   ),
        // ],
      ),
    ],
    // Optional: Add error page handling
    // errorBuilder: (context, state) => ErrorScreen(state.error),
  );
}
