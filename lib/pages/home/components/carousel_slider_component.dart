import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/pages/home/provider/home_provider.dart';

class CarouselSliderComponent extends ConsumerWidget {
  const CarouselSliderComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataRef = ref.watch(carouselDataProvider);
    return Container(
      child: dataRef.when(
        data: (data) {
          return Image.network(data.data![0].imagePath.toString());
        },
        error: (error, stackTrace) {
          return Text(error.toString());
        },
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
