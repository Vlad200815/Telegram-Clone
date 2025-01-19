import 'package:flutter/material.dart';

class MyNotificationCounter extends StatelessWidget {
  const MyNotificationCounter({
    super.key,
    required this.counter,
  });

  final int counter;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(60),
      ),
      child: Center(
        child: Text(
          counter.toString(),
          style: theme.textTheme.bodyLarge!.copyWith(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
