import 'package:flutter_accesibility/features/home/screens/home_screen.dart';
import 'package:flutter_accesibility/features/login/screens/login_screen.dart';

abstract class Routes {
  static const home = '/home';
  static const login = '/login';

  static final routes = {
    home: (_) => const HomeScreen(),
    login: (_) => const LoginScreen(),
  };
}
