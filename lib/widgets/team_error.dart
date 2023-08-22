import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

ResponsiveGridCol teamError(String? errorMessage) {
  return ResponsiveGridCol(
    child: errorMessage != null
        ? Text(
            errorMessage,
            style: const TextStyle(color: Colors.red),
          )
        : const Text(""),
  );
}
