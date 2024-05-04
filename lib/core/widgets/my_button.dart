import 'package:flutter/material.dart';
import 'package:ftbl/core/helpers/font_helper.dart';
import 'package:ftbl/core/theme/theme_helper.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                ThemeHelper.mintColor,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Text(
                text,
                style: FontHelper.textStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  textColor: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
