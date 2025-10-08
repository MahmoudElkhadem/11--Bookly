import 'package:bookly/features/home/home_views.dart';
import 'package:bookly/features/search/presentation/view/search_view.dart';
import 'package:bookly/features/view/book_details_view.dart';
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
    GoRoute(
      path: '/bookDetails',
      builder: (context, state) => BookDetailsView(),
      ),
    GoRoute(
      path: '/searchView',
      builder: (context, state) => SearchView(),
      )
  ],
);
}