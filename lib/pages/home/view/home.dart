import 'package:flutter/material.dart';
import 'package:mribmart/pages/home/components/carousel_slider_component.dart';
import 'package:mribmart/utils/app_sizer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        children: [
          gapH8,
          CarouselSliderComponent(),
        ],
      ),
    );
  }
}
