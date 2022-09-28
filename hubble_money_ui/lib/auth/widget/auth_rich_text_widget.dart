import 'package:flutter/material.dart';

class AuthRichTextWidget extends StatelessWidget {
  const AuthRichTextWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    this.color2,
    this.color4,
    this.fontSize,
    this.decoration,
  });

  final String text1;
  final String text2;
  final String text3;
  final String text4;

  final Color? color2;
  final Color? color4;

  final double? fontSize;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: text1,
          style: Theme.of(context).textTheme.caption!.copyWith(
                fontSize: fontSize ?? 9,
              ),
          children: [
            TextSpan(
              text: text2,
              style: Theme.of(context).textTheme.caption!.copyWith(
                    fontSize: fontSize ?? 9,
                    decoration: decoration ?? TextDecoration.underline,
                    color: color2,
                  ),
            ),
            TextSpan(
              text: text3,
            ),
            TextSpan(
              text: text4,
              style: Theme.of(context).textTheme.caption!.copyWith(
                    fontSize: fontSize ?? 9,
                    decoration: decoration ?? TextDecoration.underline,
                    color: color4,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
