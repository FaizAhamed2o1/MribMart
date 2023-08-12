import 'package:flutter/material.dart';
import 'package:mribmart/utils/app_sizer.dart';
import 'package:sizer/sizer.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView(
        children: [
          Text('Item List'),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            height: 20.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.red),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('1 selected item in your bag'),
                  ],
                ),
                gapH4,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                      width: 10.h,
                      child: Image.asset('assets/images/email.png'),
                    ),
                    Text(
                      'Jet set Eyes Kajal',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
