import 'package:go_router/go_router.dart';
import 'package:todo_app/Features/auth/presentation/views/login_view.dart';
import 'package:todo_app/Features/onboarding/presentation/views/onboarding_view.dart';
import 'package:todo_app/Features/splash/presentation/views/splash_view.dart';
import 'package:todo_app/Features/welcome/presentation/views/welcome_view.dart';

abstract class AppRouter {
  static const String kSplashView = '/';
  static const String kOnboardingView = '/onboarding';
  static const String kWelcomeView = '/welcome';
  static const String kLoginView = '/login';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kWelcomeView,
        builder: (context, state) => const WelcomeView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
