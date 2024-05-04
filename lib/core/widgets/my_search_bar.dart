import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftbl/core/helpers/font_helper.dart';
import 'package:ftbl/core/theme/theme_helper.dart';
import 'package:iconsax/iconsax.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0), // Rounded corners
        border:
            Border.all(color: ThemeHelper.backgroundFadedColor, width: 1.0.w),
      ),
      padding:
          const EdgeInsets.symmetric(horizontal: 16.0), // Horizontal padding
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          children: [
            const Icon(Iconsax.search_normal,
                color: Colors.grey), // Search icon
            SizedBox(width: 8.0.w), // SizedBox for spacing
            Expanded(
              child: TextField(
                style: FontHelper.textStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    textColor: ThemeHelper.greyColor),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: FontHelper.textStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      textColor: ThemeHelper.greyColor),
                  border: InputBorder.none, // Remove default border
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
