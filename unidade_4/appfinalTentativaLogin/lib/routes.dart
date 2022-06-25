import 'package:appfinal/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:appfinal/pages/home_dart';
import 'package:appfinal/pages/notificacao_page.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> list =
      <String, WidgetBuilder>{
    '/home': (_) => const HomePage(),
    '/notificacao': (_) => const NotificacaoPage(),
    '/login': (_) => const LoginPage(),
  };

  static String initial = '/login';
  static String home = '/home';

  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
}
