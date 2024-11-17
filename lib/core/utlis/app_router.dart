import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app/Features/home/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/Presentation/view/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KBookDetailsView = '/bookDetailsView';
  static const KSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
