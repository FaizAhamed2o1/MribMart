import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('categories'),
      ),
      body: const Center(
        child: Text('this is categories'),
      ),
    );
  }
}
