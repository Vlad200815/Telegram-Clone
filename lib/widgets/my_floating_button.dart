import 'package:flutter/material.dart';

class MyFloatingButton extends StatelessWidget {
  const MyFloatingButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final void Function()? onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FloatingActionButton(
      shape: CircleBorder(),
      backgroundColor: theme.colorScheme.primary,
      onPressed: onPressed,
      // child: Icon(
      //   Icons.edit,
      //   color: theme.colorScheme.secondary,
      // ),
      child: icon,
    );
  }
}
