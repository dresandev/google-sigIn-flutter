import 'package:flutter/material.dart';

import 'package:google_sign_in_app/src/pages/home.dart';

import 'package:google_sign_in_app/src/routes/routes.dart';

abstract class Pages {
  static const initialRoute = Routes.home;

  static final Map<String, WidgetBuilder> routes = {
    Routes.home: (_) => const HomePage()
  };
}
