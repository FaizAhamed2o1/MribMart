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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600.withOpacity(0.25),
            offset: const Offset(0, 1),
            blurRadius: 3,
            spreadRadius: 2,
          ),
        ],
      ),
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
    );
  }
}
