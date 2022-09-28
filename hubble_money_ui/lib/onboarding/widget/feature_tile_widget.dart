import 'package:flutter/material.dart';

class FeatureTileWidget extends StatelessWidget {
  const FeatureTileWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String title;
  final String subtitle;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: image,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }
}
