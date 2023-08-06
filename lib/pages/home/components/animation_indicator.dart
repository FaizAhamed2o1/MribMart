import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AnimationIndicator extends StatelessWidget {
  final int count_index;
  final int active_index;
  const AnimationIndicator(
      {super.key, required this.count_index, required this.active_index});

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: active_index,
      count: count_index,
      effect: WormEffect(
          dotWidth: 5,
          dotHeight: 5,
          spacing: 3,
          dotColor: Colors.grey,
          activeDotColor: Colors.white),
    );
  }
}
