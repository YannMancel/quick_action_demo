import 'package:flutter/material.dart';
import 'package:quick_action_demo/_features.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quick Action'),
      ),
      body: const Center(
        child: Text('HOME'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => DetailPage.go(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
