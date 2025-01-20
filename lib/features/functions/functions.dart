import 'package:flutter/material.dart';

void goBackToHome(BuildContext context) {
  Navigator.pop(context);
}

void goToAddScreen(BuildContext context) {
  Navigator.pushNamed(context, "/add_chat");
}
