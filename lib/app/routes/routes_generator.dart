import 'package:flutter/material.dart';
import 'package:pokemon_app/app/modules/home/home_page.dart';
import 'package:pokemon_app/app/routes/routes_constants.dart';

class RoutesGenerator {
 static final _routes = {
    RoutesConstants.initial: (context) => const HomePage(),
    RoutesConstants.home: (context) => const HomePage(),
  };

  static Route<dynamic>? generateRoutes(RouteSettings settings) {
    final WidgetBuilder? builder = _routes[settings.name];
    if(builder != null) {
      return PageRouteBuilder(
        pageBuilder: (context, _, __) => builder(context),
      );
    }
  }
}
