import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mribmart/utils/app_sizer.dart';
import 'package:sizer/sizer.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  var _ratingValue;
  // height: 35.h,
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3.8,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            color: Theme.of(context).primaryColorLight,
            elevation: 10.0,
            child: Padding(
              padding: EdgeInsets.all(1.5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
// image container
                  Container(
                    width: double.infinity,
                    height: 20.h,
                    child: Image.asset('assets/images/headphone_product.png'),
                  ),

                  gapH4,

                  // price
                  Text(
                    '99.99\$',
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),

                  gapH4,

                  // product name
                  Text(
                    'Headphone H50S',
                    style: TextStyle(fontSize: 16.sp),
                  ),

                  gapH4,

                  // Product review section
                  RatingBar(
                      initialRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 18.sp,
                      ratingWidget: RatingWidget(
                          full: const Icon(Icons.star, color: Colors.orange),
                          half: const Icon(
                            Icons.star_half,
                            color: Colors.orange,
                          ),
                          empty: const Icon(
                            Icons.star_outline,
                            color: Colors.orange,
                          )),
                      onRatingUpdate: (value) {
                        setState(() {
                          _ratingValue = value;
                        });
                      }),

                  gapH8,
                  Text(
                    '(4 Reviews)',
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
