import 'package:flutter/material.dart';

class NumberFieldWidget extends StatelessWidget {
  const NumberFieldWidget({
    super.key,
    required this.onTap,
    required this.hintText,
    this.showPrefixIcon = true,
  });
  final VoidCallback? onTap;
  final String? hintText;
  final bool showPrefixIcon;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        autofocus: true,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: hintText,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          labelStyle: TextStyle(
            color: Colors.grey.shade500,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          prefix: showPrefixIcon
              ? Text(
                  '+91  ',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                )
              : null,
          suffixIcon: InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                width: 30,
                height: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: const ColoredBox(
                    color: Colors.black,
                    child: Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
