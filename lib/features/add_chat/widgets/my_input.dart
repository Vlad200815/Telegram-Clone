import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  const MyInput({
    super.key,
    required this.controller,
    required this.labelText,
    required this.isTopLabel,
  });

  final TextEditingController? controller;
  final String? labelText;
  final bool isTopLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: isTopLabel ? labelText : null,
          hintText: isTopLabel == false ? labelText : null,
          floatingLabelBehavior:
              isTopLabel ? FloatingLabelBehavior.always : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: theme.colorScheme.primary, width: 2),
          ),
        ),
      ),
    );
  }
}
