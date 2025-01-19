import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key, required this.controller,});
  
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
    );
  }
}
