import 'package:flutter/material.dart';

class DescriptionTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
        'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }
}
