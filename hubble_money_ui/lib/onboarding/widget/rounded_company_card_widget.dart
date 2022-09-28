import 'package:flutter/material.dart';

class RoundedCompanyCardWidget extends StatelessWidget {
  const RoundedCompanyCardWidget({
    super.key,
    required this.name,
    required this.image,
  });

  final String name;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: ShapeBorder.lerp(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(200),
            ),
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(200),
            ),
            0.5,
          ),
          elevation: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: image,
          ),
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
