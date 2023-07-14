import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:post/view/main_view/home/create_post/create_post_page.dart';

import '../../view/main_view/main_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

final router = GoRouter(
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const MainPage(),
    ),
    GoRoute(
      path: '/CreatePostPage',
      builder: (BuildContext context, GoRouterState state) => const CreatePostPage(),
    ),
  ],
);