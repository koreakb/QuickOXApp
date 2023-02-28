import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int forOX = 0;

  @override
  void initState() {
    super.initState();
    forOX = Random().nextInt(10);
  }

  void onTap() {
    HapticFeedback.mediumImpact();
    setState(() {
      forOX = Random().nextInt(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text(
          'Quick',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.grey[500],
      ),
      body: Column(
        children: [
          Flexible(
            flex: 4,
            child: Center(
              child: Icon(
                forOX % 2 == 0 ? Icons.circle_outlined : Icons.close_outlined,
                size: 300,
              ),
            ),
          ),
          Flexible(
            child: TextButton(
              onPressed: onTap,
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black87),
                splashFactory: NoSplash.splashFactory,
              ),
              child: const Text(
                'Start!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
