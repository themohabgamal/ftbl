import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 1.5);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/icons/menu.png'),
          onPressed: () {},
        ),
        actions: [
          Image.asset(
            'assets/images/boy.png',
            width: 40.w,
          ),
        ],
      ),
    );
  }
}
