import 'package:flutter/material.dart';

void goBack(BuildContext context) {
  Navigator.pop(context);
}

void goToAddScreen(BuildContext context) {
  Navigator.pushNamed(context, "/add_chat");
}

void goToProfileScreen(BuildContext context) {
  Navigator.pushNamed(
    context,
    "/profile",
  );
}
