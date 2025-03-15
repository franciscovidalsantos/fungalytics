import 'package:flutter/material.dart';

class FungalyticsTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromARGB(255, 109, 50, 50),
      foregroundColor: Colors.white,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: const Color.fromARGB(255, 31, 19, 19),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white30,
    ),

    textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.black)),

    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 109, 50, 50),
        foregroundColor: Colors.white,
        iconColor: Colors.white,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: const Color.fromARGB(255, 109, 50, 50),
          width: 2,
        ),
        foregroundColor: const Color.fromARGB(255, 109, 50, 50),
        iconColor: const Color.fromARGB(255, 109, 50, 50),
      ),
    ),

    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color?>(
        (Set<WidgetState> states) =>
            states.contains(WidgetState.selected)
                ? Colors.white
                : null, // use default when not selected
      ),
      trackColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> state) =>
            state.contains(WidgetState.selected)
                ? const Color.fromARGB(255, 109, 50, 50)
                : Colors.white,
      ),
      // trackOutlineColor manages the border color
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: const Color.fromARGB(255, 109, 50, 50),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 48, 48, 48),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromARGB(255, 109, 50, 50),
      foregroundColor: Colors.white,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: const Color.fromARGB(255, 31, 19, 19),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white30,
    ),

    textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),

    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 109, 50, 50),
        foregroundColor: Colors.white,
        iconColor: Colors.white,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: const Color.fromARGB(255, 109, 50, 50),
          width: 2,
        ),
        foregroundColor: Colors.white,
        iconColor: Colors.white,
      ),
    ),

    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color?>(
        (Set<WidgetState> states) =>
            states.contains(WidgetState.selected)
                ? const Color.fromARGB(255, 48, 48, 48)
                : null, // use default when not selected
      ),
      trackColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> state) =>
            state.contains(WidgetState.selected)
                ? const Color.fromARGB(255, 109, 50, 50)
                : const Color.fromARGB(255, 48, 48, 48),
      ),
      // trackOutlineColor manages the border color
    ),

    progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.white),
  );
}
