import 'package:flutter/material.dart';

class MyBadge extends StatelessWidget {
  const MyBadge({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        // Optional border
      ),
      child: Icon(
        Icons.check,
        color: theme.colorScheme.secondary,
        size: 15,
      ),
    );
  }
}
