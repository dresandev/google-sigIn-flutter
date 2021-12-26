import 'package:flutter/material.dart';

import 'routes/pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google SignIn',
      debugShowCheckedModeBanner: false,
      initialRoute: Pages.initialRoute,
      routes: Pages.routes,
    );
  }
}
