import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 15.h,
        width: MediaQuery.of(context).size.width,
        // color: Colors.red,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      size: 30.sp,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'Shopping',
                      style: TextStyle(fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
