import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
AppBar AuthAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios,
          color: Theme.of(context).colorScheme.primary),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  );
}
