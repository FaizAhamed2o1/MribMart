import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SectionHeader extends StatelessWidget {
  final String sectionName;
  final String? seeMoreButtonText;
  SectionHeader({
    super.key,
    required this.sectionName,
    this.seeMoreButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionName,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          child: seeMoreButtonText == null
              ? null
              : TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {},
                  child: Text(
                    seeMoreButtonText!,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
        )
      ],
    );
  }
}
