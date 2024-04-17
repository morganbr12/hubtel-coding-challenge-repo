import 'package:go_router/go_router.dart';
import 'package:hubtel_coding_challenge/src/core/router/routes.dart';
import 'package:hubtel_coding_challenge/src/features/home_body/home.dart';

class AppRouter {
  static final goRouter = GoRouter(
    routes: [
      GoRoute(
        path: RouteConstants.root,
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
