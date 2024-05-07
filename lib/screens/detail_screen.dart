import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.counter});

  final int counter;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Detail Screen: ${(GoRouterState.of(context).extra as Function)(12, 13)}"),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              widget.counter.toString(),
              style: const TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
