import 'package:ci_cd_example/screens/detail_screen.dart';
import 'package:ci_cd_example/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      name: "initial",
      path: "/",
      builder: (context, state) => HomeScreen(),
      routes: [
        GoRoute(
          name: "details",
          path: "detail/:counter",
          builder: (context, state)  {
            //,
         // debugPrint("PATH PARAMETERS 1: ${state.uri.queryParameters["lastname"]}");
      //    debugPrint("PATH PARAMETERS 2: ${state.pathParameters}");
           return DetailScreen(counter: int.parse(state.pathParameters["counter"] as String));
          }//(state.extra as Map<String,dynamic>)["counter"]
        )
      ],
    ),

  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
    );
  }
}
