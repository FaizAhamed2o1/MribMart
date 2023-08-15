import 'package:flutter/material.dart';
import 'package:mribmart/pages/product_details/components/description.dart';
import 'package:mribmart/pages/product_details/components/reviews.dart';

class Tabview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Description'),
              Tab(text: 'Review'),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    DescriptionTab(),
                    ReviewTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
