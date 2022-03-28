import 'package:flutter/material.dart';
import 'package:flutter_accesibility/core/routes.dart';

void main() => runApp(const Accesibility());

class Accesibility extends StatelessWidget {
  const Accesibility({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: Routes.routes,
      initialRoute: Routes.login,
      theme: ThemeData.dark(),
    );
  }
}
