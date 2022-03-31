import 'dart:developer';

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
      builder: (context, child) {
        final query = MediaQuery.of(context);
        // The fontSize increase according to the textScaleFactor
        //  if the text scale factor is 1.5, text will be 50% larger than the specified font size.
        log('TextScaleFactor: ${query.textScaleFactor}');
        // TODO: Test if this value is avaible in IOS
        //  print("DevicePixelRatio: ${query.devicePixelRatio}");

        // So basically u can test how much biggert the text it can be
        // For example: Come from 1.0 to 1.5 could be a good range
        // we can achieve some like that with:
        return MediaQuery(
          //  data: query.copyWith(textScaleFactor: 4.5),
          // clamb 1 to 1.15
          data: query.copyWith(
              // Here we are just increasing the font size between a range that we know it works for the design
              // But according to some tests Flutter handle that part if we don't
              textScaleFactor: query.textScaleFactor.clamp(1.0, 1.5)),
          child: child!,
        );
      },
    );
  }
}
