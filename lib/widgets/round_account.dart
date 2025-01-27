import 'package:flutter/material.dart';

class RoundAccount extends StatelessWidget {
  const RoundAccount({
    super.key,
    required this.demention,
  });

  final double demention;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: demention,
      width: demention,
      decoration: BoxDecoration(
        shape: BoxShape.circle, // Makes the container circular
        image: DecorationImage(
          // image: NetworkImage(
          //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWVlRwtePRZylq97yiJ9UxWitxKKNR1Zw3MQ&s",
          // ),
          image: AssetImage("assets/girl.jpg"),
          fit: BoxFit.cover, // Ensures the image covers the container
        ),
      ),
    );
  }
}
