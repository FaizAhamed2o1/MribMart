import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:http/http.dart' as http;
import 'package:mribmart/pages/home/models/catetories_model.dart';
import 'package:mribmart/utils/app_url.dart';

class ApiServiceCategories {
  Future<CategoriesModel> getCarouselData() async {
    http.Response response;

    response = await http.get(Uri.parse(categoriesApi));

    if (response.statusCode == 200) {
      var body = response.body;
      debugPrint(body);

      return CategoriesModel.fromJson(jsonDecode(body));
    } else {
      throw Exception('Failed to load');
    }
  }
}

final categoriesProvider =
    Provider<ApiServiceCategories>((ref) => ApiServiceCategories());
