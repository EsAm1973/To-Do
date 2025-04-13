import 'package:go_router/go_router.dart';
import 'package:todo_app/Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String kSplashView = '/';

  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplashView,
      builder: (context, state) => const SplashView(),
    ),
  ]);
}
