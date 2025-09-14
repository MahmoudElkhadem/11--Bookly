import 'package:bookly/features/home/home_views.dart';
import 'package:bookly/features/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) => HomeViews(),
      ),
  ],
);
}