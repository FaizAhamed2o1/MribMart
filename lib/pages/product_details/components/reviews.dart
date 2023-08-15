import 'package:flutter/material.dart';

class ReviewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5, // Replace with actual number of reviews
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('User ${index + 1}'),
          subtitle: Text('This is a great product!'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.yellow),
              Text('5.0'), // Replace with actual rating
            ],
          ),
        );
      },
    );
  }
}
