import 'package:flutter/material.dart';

class GenerallField extends StatelessWidget {
  const GenerallField({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  final Widget icon;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 20),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            color: Colors.transparent,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                icon,
                const SizedBox(width: 20),
                Text(
                  text,
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
