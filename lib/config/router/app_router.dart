import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/animated/animated_screen.dart';
import 'package:widgets_app/presentation/screens/app_tutorial/app_tutorial.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
     GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonScreen(),
    ),
     GoRoute(
      path: '/cards',
      builder: (context, state) => const CardScreen(),
    ),
     GoRoute(
      path: '/progress',
      builder: (context, state) => const ProgressScreen(),
    ),
     GoRoute(
      path: '/snackbar',
      builder: (context, state) => const SnackbarScreen(),
    ),
      GoRoute(
      path: '/animated',
      builder: (context, state) =>  AnimatedScreen(),
    ),
      GoRoute(
      path: '/ui-controls',
      builder: (context, state) =>  const ControlsScreen(),
    ),
     GoRoute(
      path: '/tutorial',
      builder: (context, state) =>  const AppTutorialScreen(),
    ),
       GoRoute(
      path: '/infinite',
      builder: (context, state) =>  const InfiniteScroolScreen(),
    ),
    
   
  ],
);