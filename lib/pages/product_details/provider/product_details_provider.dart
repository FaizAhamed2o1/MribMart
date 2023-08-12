import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final iconProvider1 = StateProvider<Icon?>((ref) {
  return Icon(Icons.check);
});

final iconProvider2 = StateProvider<Icon?>((ref) {
  return null;
});
