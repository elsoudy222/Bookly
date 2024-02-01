import 'package:bookly/features/home/presentation/view/home/home_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/splash_screen.dart';

abstract class AppRouter{

  static final  router = GoRouter(
    routes: [
      // Splash screen Route:
      GoRoute(
        path: '/',
        builder: ( context,  state) {
          return const SplashScreen();
        },

      ),
      // Home screen Route:
      GoRoute(
        path: '/homeScreen',
        builder: ( context,  state) {
          return const HomeScreen();
        },

      ),
    ],
  );
}