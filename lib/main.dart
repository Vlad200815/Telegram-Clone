import 'package:cool_design_practise/features/add_chat/add_chat.dart';
import 'package:cool_design_practise/features/profile/profile.dart';
import 'package:cool_design_practise/features/search/view/view.dart';
import 'package:flutter/material.dart';
import 'features/home/view/view.dart';
import 'theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      initialRoute: '/',
      routes: {
        "/": (context) => HomeScreen(),
        "/search": (context) => SearchScreen(),
        "/add_chat": (context) => AddChatScreen(),
        "/profile": (context) => ProfileScreen(),
      },
    );
  }
}
