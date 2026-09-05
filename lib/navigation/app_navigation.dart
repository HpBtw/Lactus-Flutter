import 'package:flutter/material.dart';
import 'package:sprint3flutter/navigation/app_routes.dart';

class AppNavigation {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRoutes.list:
        return MaterialPageRoute(builder: (_) => const ListScreen());
      case AppRoutes.detail:
        final banco = settings.arguments as BancoLeite;
        return MaterialPageRoute(builder: (_) => DetailScreen(banco: banco));
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Rota não encontrada')),
          ),
        );
    }
  }
}