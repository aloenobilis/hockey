import 'package:flutter/material.dart';

Widget loader(bool isLoading) {
  return Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Opacity(
          opacity: isLoading ? 1.0 : 00,
          child: const CircularProgressIndicator(
            color: Colors.teal,
          ),
        ),
      ),
    ),
  );
}
