import 'package:flutter/material.dart';

Future<void> showMyBottomBar(BuildContext context) async {
  return await showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.95,
      );
    },
  );
}
