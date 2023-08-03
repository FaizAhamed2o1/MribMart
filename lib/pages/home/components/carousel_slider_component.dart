import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/pages/home/provider/home_provider.dart';

class CarouselSliderComponent extends ConsumerWidget {
  const CarouselSliderComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //AsyncValue<CarouselSliderModel> config = ref.watch(dataProvider);
    //final dataAsyncValue = watch(dataProvider);
    final poemRef = ref.watch(carouselDataProvider);
    return Container(
      child: poemRef.when(
        data: (data) {
          Text(data.toString());
          return null;
        },
        error: (error, stackTrace) {
          Text(error.toString());
          return null;
        },
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
