import 'package:expanse_tracker_app/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorSchema = ColorScheme.fromSeed(
  seedColor: Colors.blue,
); // k use for defining global variable

var kDarkColorSchema = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Colors.purple,
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorSchema,
        appBarTheme: const AppBarTheme().copyWith(
          centerTitle: true,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorSchema.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorSchema.primaryContainer,
              foregroundColor: kDarkColorSchema.onPrimaryContainer),
        ),
        textTheme: const TextTheme().copyWith(
          titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kDarkColorSchema.onSecondaryContainer,
                fontSize: 16,
              ),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorSchema,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorSchema.onPrimaryContainer,
          foregroundColor: kColorSchema.primaryContainer,
          centerTitle: true,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorSchema.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorSchema.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorSchema.onSecondaryContainer,
                fontSize: 16,
              ),
            ),
      ), // use default material theme
      // themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
