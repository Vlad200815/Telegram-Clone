import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Slightly rounded corners
        ),
        minWidth: MediaQuery.of(context).size.width / 0.95,
        height: 60,
        onPressed: onPressed,
        color: theme.colorScheme.primary,
        child: Text(
          text,
          style: theme.textTheme.titleMedium,
        ),
      ),
    );
  }
}
