import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/pages/home/controller/carousel_slider_model.dart';
import 'package:mribmart/pages/home/models/carousel_slider_model.dart';

// final configCarouselProvider = FutureProvider<CarouselSliderModel>((ref) async {
//   final content = json.decode(
//     await rootBundle(carouselSliderApi),
//   ) as Map<String, Object?>;

//   return CarouselSliderModel.fromJson(content);
// });

// final dataProvider = FutureProvider<Data>((ref) async {
//   final response = await http.get(Uri.parse(carouselSliderApi));
//   if (response.statusCode == 200) {
//     return Data.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Failed to load data');
//   }
// });

final carouselDataProvider = FutureProvider<CarouselSliderModel>((ref) async {
  return ref.watch(carouselProvider).getCarouselData();
});
