import 'package:flutter/material.dart';

class MovieWidget extends StatelessWidget {
  const MovieWidget({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset(
          image,
          width: 100,
          height: 155,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
