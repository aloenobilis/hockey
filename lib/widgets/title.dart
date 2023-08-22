import 'package:flutter/material.dart';

Widget title(String heading) {
  return Row(
    children: [
      Image.asset(
        'assets/nhl.png',
        fit: BoxFit.contain,
        scale: 11.0,
      ),
      Text(
        heading,
        style: const TextStyle(fontWeight: FontWeight.w300),
      )
    ],
  );
}
