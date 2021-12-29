import 'package:flutter/material.dart';
import 'package:pokemon_app/app/routes/routes.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PokeApp",
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesConstants.initial,
      onGenerateRoute: (settings) => RoutesGenerator.generateRoutes(settings),
    );
  }
}
