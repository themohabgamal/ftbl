import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftbl/core/helpers/font_helper.dart';
import 'package:ftbl/core/helpers/spacing_helper.dart';
import 'package:ftbl/core/routing/routes.dart';
import 'package:ftbl/core/theme/theme_helper.dart';
import 'package:ftbl/core/widgets/my_button.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.h,
      left: 16.w,
      right: 16.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Discover the World of Football',
            style: FontHelper.textStyle(
              fontSize: 29,
              fontWeight: FontWeight.bold,
              textColor: Colors.white,
            ),
          ),
          verticalSpace(16),
          Text(
            'The world football pitch in the palm of your hand.',
            style: FontHelper.textStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              textColor: ThemeHelper.greyColor,
            ),
          ),
          verticalSpace(16),
          MyButton(
              text: "Get Started",
              onPressed: () => Navigator.pushNamed(context, Routes.home)),
        ],
      ),
    );
  }
}
