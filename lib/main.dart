import 'package:bord_project/src/core/dependencies/injection_container.dart';
import 'package:bord_project/src/router/router.dart';
import 'package:flutter/material.dart';

void main() {
  initGetIt();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(initialRoutes: [const MainPageRoute()]),
    );
  }
  
}


