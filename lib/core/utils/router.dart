import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const homePath = '/homeView';
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },  
      ),
      GoRoute(
        path: homePath,
        builder: (context, state) {
          return const HomeView();
        },
      ),
    ],
  );
}
