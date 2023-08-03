import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/pages/home/models/carousel_slider_model.dart';

import 'package:http/http.dart' as http;
import 'package:mribmart/utils/app_url.dart';

class ApiServiceCarousel {
  Future<CarouselSliderModel> getCarouselData() async {
    http.Response response;

    response = await http.get(Uri.parse(carouselSliderApi));

    if (response.statusCode == 200) {
      var body = response.body;
      debugPrint(body);
      //return PoemClass.fromJson(jsonDecode(response.body));

      return CarouselSliderModel.fromJson(jsonDecode(body));
    } else {
      throw Exception('Failed to load');
    }
  }
}

final carouselProvider =
    Provider<ApiServiceCarousel>((ref) => ApiServiceCarousel());
