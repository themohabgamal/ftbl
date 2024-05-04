import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftbl/core/theme/theme_helper.dart';
import 'package:ftbl/features/get_started/widgets/bottom_section.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  GetStartedScreenState createState() => GetStartedScreenState();
}

class GetStartedScreenState extends State<GetStartedScreen> {
  late AssetImage _bgImage;

  @override
  void initState() {
    super.initState();
    _bgImage = const AssetImage('assets/images/get_started_bg.jpg');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      precacheImage(_bgImage, context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: _bgImage,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
          ),
          Positioned.fill(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    ThemeHelper.backgroundColor.withOpacity(0.99),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 220.h,
            left: 16.w,
            child: Image.asset(
              'assets/images/ftbl.png',
              width: 50.w,
            ),
          ),
          const BottomSection(),
        ],
      ),
    );
  }
}
