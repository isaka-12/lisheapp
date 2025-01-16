import 'package:flutter/material.dart';

final lighttheme = ThemeData.light().colorScheme.copyWith(
      secondary: Colors.white,
      onSecondary: const Color.fromARGB(255, 4, 2, 29),
      primary: const Color.fromARGB(255, 250, 151, 2),
      onPrimary: const Color.fromARGB(255, 245, 241, 241),
      onPrimaryFixed: const Color.fromARGB(255, 245, 241, 241),
      onSecondaryFixed: const Color.fromARGB(255, 233, 165, 64),
    );

final darktheme = ThemeData.dark().copyWith(
    colorScheme: ThemeData.dark().colorScheme.copyWith(
          secondary: const Color.fromARGB(255, 4, 2, 29),
          onPrimary: Colors.white,
          onPrimaryFixed: const Color.fromARGB(255, 24, 23, 41),
          primary: const Color.fromARGB(255, 250, 151, 2),
          onSecondary: Colors.white,
          onSecondaryFixed: const Color.fromARGB(255, 29, 29, 49),
        ));