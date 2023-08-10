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
      width: 28.w,
      // color: Colors.red,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.5.h),
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
              ),
            );
          }),
    );
  }
}
