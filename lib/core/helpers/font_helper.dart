import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FontHelper {
  static TextStyle textStyle(
      {required double fontSize,
      required FontWeight fontWeight,
      required Color textColor}) {
    return GoogleFonts.poppins(
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      color: textColor,
    );
  }
}
