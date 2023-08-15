import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/utils/app_sizer.dart';
import 'package:sizer/sizer.dart';

class ProductDetails extends ConsumerWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFF8F8F8),
        appBar: AppBar(
          actions: [
            Theme(
              data: ThemeData(
                popupMenuTheme: PopupMenuThemeData(color: Colors.white),
              ),
              child: PopupMenuButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
                elevation: 2,
                offset: Offset(0, 50),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text('Change Theme'),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text('Change Theme'),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            // top carousel section
            Container(
              height: 40.h,
              width: 100.w,
              color: Color(0xFFECECEC),
              child: SizedBox(
                height: 100.h,
                width: 40.w,
                child: Image.asset(
                  'assets/images/intro_image_bg.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            gapH20,

            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white, boxShadow: [BoxShadow()]),
                  height: 12.h,
                  width: 20.h,
                  child: Image.asset(
                    'assets/images/intro_image_bg.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),

            gapH32,

            Text(
              'Nike Blaze Mid 77',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 28,
              ),
            ),

            gapH4,

            Text(
              'Apple Mac',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
            gapH4,

            Row(
              children: [
                Text(
                  '\$909',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                ),
                gapW16,
                Text(
                  '\$909',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      decoration:
                          TextDecoration.combine([TextDecoration.lineThrough])),
                ),
                Spacer(),
                Icon(Icons.abc),
                gapH32,
              ],
            ),

            Row(
              children: [
                SizedBox(
                  height: 55,
                  width: 55,
                  child: Card(
                    child: Center(
                      child: Text(
                        '41',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                      //set border radius more than 50% of height and width to make circle
                    ),
                  ),
                ),
              ],
            ),

            gapH32,

            Row(
              children: [
                Container(
                  height: 8.h,
                  width: 25.w,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 180,
              child: Center(
                child: Text(
                  'Profile Details Goes here',
                ),
              ),
            ),

            SizedBox(
              height: 50,
              child: AppBar(
                bottom: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.directions_bike),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.directions_car,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Expanded(
            //   child: TabBarView(
            //     children: [
            //       // first tab bar view widget
            //       Container(
            //         color: Colors.red,
            //         child: Center(
            //           child: Text(
            //             'Bike',
            //           ),
            //         ),
            //       ),

            //       // second tab bar viiew widget
            //       Container(
            //         color: Colors.pink,
            //         child: Center(
            //           child: Text(
            //             'Car',
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
