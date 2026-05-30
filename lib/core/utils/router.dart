import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const homeViewPath = '/homeView';
  static const detailsViewPath = '/detaileView';
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: "/",
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: homeViewPath,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: detailsViewPath,
        builder: (context, state) {
          // final book=state.extra as BookModel;
          return DetailsView(bookModel: state.extra as BookModel);
        },
      ),
    ],
  );
}
