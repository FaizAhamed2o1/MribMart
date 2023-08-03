import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mribmart/pages/drawer/view/custom_drawer.dart';
// import 'package:mribmart/pages/drawer/view/custom_drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('this is home'),
      ),
      drawer: CustomDrawer(),
    );
  }
}
