import 'package:go_router/go_router.dart';
import 'package:mybookly/Features/home/presentation/views/book_details_view.dart';
import 'package:mybookly/Features/home/presentation/views/home_view.dart';

import '../../Features/search/presentation/views/search_view.dart';
import '../../views/widgets/splash_view.dart';

abstract class AppRouter {
  static const kbookdetails = '/bookdetails';
  static const ksearch = '/search';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeview',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kbookdetails,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: ksearch,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
