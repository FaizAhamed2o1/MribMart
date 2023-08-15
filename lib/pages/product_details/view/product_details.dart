import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/pages/product_details/provider/product_details_provider.dart';
import 'package:mribmart/utils/app_sizer.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/provider/theme_provider.dart';

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
          ],
        ),
      ),
    );
  }
}
