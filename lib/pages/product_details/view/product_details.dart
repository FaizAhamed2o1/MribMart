import 'package:flutter/material.dart';
import 'package:mribmart/utils/app_sizer.dart';
import 'package:sizer/sizer.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_basket_outlined),
          ),
        ],
        title: Text('Product Details'),
      ),
      body: ListView(
        children: [
          Text('data'),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 1.5.h, vertical: 1.5.h),
            height: 20.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      '1500',
                      style: TextStyle(
                        fontSize: 12.sp,
                        decoration: TextDecoration.lineThrough,
                        decorationThickness: 1,
                      ),
                    ),
                    gapW4,
                    Text(
                      '1400',
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text('Product Title'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
