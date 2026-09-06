import 'package:flutter/material.dart';
import 'package:sprint3flutter/model/banco_leite.dart';
import 'package:sprint3flutter/navigation/app_routes.dart';
import 'package:sprint3flutter/ui/screens/detail_screen.dart';
import 'package:sprint3flutter/ui/screens/form_screen.dart';
import 'package:sprint3flutter/ui/screens/home_screen.dart';
import 'package:sprint3flutter/ui/screens/list_screen.dart';
import 'package:sprint3flutter/ui/screens/my_donations_screen.dart';
import 'package:sprint3flutter/ui/screens/splash_screen.dart';

class AppNavigation {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRoutes.list:
        return MaterialPageRoute(builder: (_) => const ListScreen());
      case AppRoutes.myDonations:
        return MaterialPageRoute(builder: (_) => const MyDonationsScreen());
      case AppRoutes.detail:
        final banco = settings.arguments as BancoLeite;
        return MaterialPageRoute(builder: (_) => DetailScreen(banco: banco));
      case AppRoutes.form:
        final banco = settings.arguments as BancoLeite;
        return MaterialPageRoute(builder: (_) => FormScreen(banco: banco));
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Rota não encontrada')),
          ),
        );
    }
  }
}