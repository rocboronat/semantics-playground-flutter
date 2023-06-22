import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Semantics playground',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("A single text"),
            Semantics(
              label: "Semantics",
              child: const Text("A regular semantics"),
            ),
            Semantics(
              label: "Semantics",
              excludeSemantics: true,
              child: const Text("A semantics that overrides"),
            ),
            Semantics(
              label: "Semantics 1",
              child: Semantics(
                label: "Semantics 2",
                child: const Text("Semantics over Semantics"),
              ),
            ),
            MergeSemantics(
              child: Column(
                children: const [
                  Text("Merged text 1"),
                  Text("Merged text 2"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
