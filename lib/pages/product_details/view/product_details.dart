import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/pages/product_details/provider/product_details_provider.dart';
import 'package:mribmart/utils/app_sizer.dart';
import 'package:sizer/sizer.dart';

class ProductDetails extends ConsumerWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
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
            width: 100.w,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorLight,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                gapH16,
                Row(
                  children: [
                    Text(
                      '1500',
                      style: TextStyle(
                        fontSize: 10.sp,
                        decoration: TextDecoration.lineThrough,
                        decorationThickness: 2,
                        decorationColor: Colors.red,
                        color: Colors.red,
                      ),
                    ),
                    gapW4,
                    Text(
                      '1400',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    )
                  ],
                ),

                // product title container
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 90.w,
                      child: Text(
                        'Product Title',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                // product Colors
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Colors: ',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              child: Container(
                                height: 10.w,
                                width: 10.w,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: ref.watch(iconProvider1),
                              ),
                              onTap: () {
                                ref.read(iconProvider1.notifier).state =
                                    Icon(Icons.check);
                                ref.read(iconProvider2.notifier).state = null;
                              },
                            ),
                            gapW8,
                            InkWell(
                              onTap: () {
                                ref.read(iconProvider2.notifier).state =
                                    Icon(Icons.check);
                                ref.read(iconProvider1.notifier).state = null;
                              },
                              child: Container(
                                height: 10.w,
                                width: 10.w,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: ref.watch(iconProvider2),
                              ),
                            ),
                            gapW8,
                            Container(
                              height: 10.w,
                              width: 10.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            gapW8,
                            Container(
                              height: 10.w,
                              width: 10.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
