import 'package:flutter/material.dart';
import 'package:mribmart/pages/home/components/categories_card.dart';
import 'package:mribmart/pages/home/components/carousel_slider_component.dart';
import 'package:sizer/sizer.dart';

import '../../drawer/view/custom_drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSliderComponent(),
              SizedBox(
                height: 2.5.h,
              ),

              // Categories section
              // categories heading
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(0),
                    ),
                    onPressed: () {},
                    child: Text(
                      'See more',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              // card container

              CategoriesCard()
            ],
          ),
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
