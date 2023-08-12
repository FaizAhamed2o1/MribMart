import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final iconProvider = StateProvider.family<Icon, Text>((_, ref) {
  return Icon(Icons.check);
});
