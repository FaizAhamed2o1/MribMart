import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum icon { one, two, three, four }

final iconProvider1 = StateProvider<Icon?>((ref) {
  return Icon(Icons.check);
});

final iconProvider2 = StateProvider<Icon?>((ref) {
  return null;
});

final amountProvider = StateProvider<int>((ref) {
  return 1;
});
