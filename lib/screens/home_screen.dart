import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double pi = 3.14;

  final Function voidCallback = (int a, int b) {
    return a + b;
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                String uril1 = Uri(
                  path: "/detail",
                  queryParameters: {
                    "counter": "200",
                    "lastname": "Abdulloh",
                  },
                ).toString();

                String url2 = "/detail?lastname=Abdulloh&counter=200";

                context.go(
                  uril1,
                  extra: voidCallback,
                );
              },
              child: Text("Detail Screen"))
        ],
      ),
    );
  }
}

//  extra: {"counter": 100},
