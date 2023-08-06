import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/pages/home/components/animation_indicator.dart';
import 'package:mribmart/pages/home/provider/home_provider.dart';

class CarouselSliderComponent extends ConsumerWidget {
  const CarouselSliderComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataRef = ref.watch(carouselDataProvider);
    return Container(
      child: dataRef.when(
        data: (data) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CarouselSlider.builder(
                itemCount: data.data!.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  //final data = bannerModel.data.one[itemIndex];
                  print(data.data![itemIndex].imagePath!);
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      width: MediaQuery.of(context).size.width,
                      imageUrl: data.data![itemIndex].imagePath!,
                      filterQuality: FilterQuality.low,
                      fit: BoxFit.fill,
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 200.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(microseconds: 1000),
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    ref.read(animatedIndicatorProvider.notifier).state = index;
                  },
                ),
              ),
              Positioned(
                bottom: 9,
                child: AnimationIndicator(
                  count_index: data.data!.length,
                  active_index: ref.watch(animatedIndicatorProvider),
                ),
              ),
            ],
          );
        },
        error: (error, stackTrace) {
          return Text(error.toString());
        },
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
