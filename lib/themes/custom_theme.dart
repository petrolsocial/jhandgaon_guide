import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get theme1 {
    return ThemeData(
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Cambria',
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Colors.purple),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        fillColor: MaterialStateProperty.resolveWith(
            (states) => const Color(0xFFB631EB)),
      ),
      textTheme: const TextTheme(
        button: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
        subtitle1: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.normal,
          fontSize: 11,
        ),
        subtitle2: TextStyle(
          color: Colors.white,
        ),
        headline1: TextStyle(
          color: Color(0xFFBF500C),
          fontSize: 60,
        ),
        headline2: TextStyle(
          color: Color(0xFFBF500C),
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        headline3: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        bodyText1: TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }

  // static ThemeData get dark {
  //   return ThemeData(
  //     primaryColor: Colors.purple,
  //     scaffoldBackgroundColor: const Color(0xFF262626),
  //     fontFamily: 'Sofia Pro Soft',
  //     dividerColor: Colors.grey.shade600,
  //     elevatedButtonTheme: ElevatedButtonThemeData(
  //       style: ButtonStyle(
  //         backgroundColor:
  //             MaterialStateColor.resolveWith((states) => Colors.blue),
  //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
  //           RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(20),
  //           ),
  //         ),
  //       ),
  //     ),
  //     checkboxTheme: CheckboxThemeData(
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(5),
  //       ),
  //       fillColor: MaterialStateProperty.resolveWith((states) => Colors.white),
  //     ),
  //     buttonTheme: ButtonThemeData(
  //       buttonColor: MaterialStateColor.resolveWith((states) => Colors.green),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(20),
  //       ),
  //     ),
  //     iconTheme: const IconThemeData(
  //       color: Colors.white,
  //     ),
  //     textTheme: const TextTheme(
  //       button: TextStyle(
  //         color: Colors.white,
  //         fontWeight: FontWeight.normal,
  //         fontSize: 14,
  //       ),
  //       subtitle2: TextStyle(
  //         color: Colors.white,
  //       ),
  //       headline1: TextStyle(
  //         color: Colors.white,
  //         fontWeight: FontWeight.bold,
  //         fontSize: 30,
  //       ),
  //       headline2: TextStyle(
  //         color: Colors.white,
  //         fontWeight: FontWeight.bold,
  //         fontSize: 25,
  //       ),
  //       headline3: TextStyle(
  //         color: Color(0xFF808080),
  //         fontSize: 20,
  //       ),
  //       bodyText1: TextStyle(
  //         color: Colors.white,
  //         fontSize: 15,
  //       ),
  //       bodyText2: TextStyle(
  //         color: Colors.white,
  //         fontSize: 14,
  //       ),
  //     ),
  //   );
  // }

  // static ThemeData get light {
  //   return ThemeData(
  //     primaryColor: Colors.black,
  //     scaffoldBackgroundColor: Colors.white,
  //     fontFamily: 'Sofia Pro Soft',
  //     dividerColor: Colors.grey.shade600,
  //     iconTheme: const IconThemeData(
  //       color: Colors.black,
  //     ),
  //     elevatedButtonTheme: ElevatedButtonThemeData(
  //       style: ButtonStyle(
  //         backgroundColor:
  //             MaterialStateColor.resolveWith((states) => Colors.blue),
  //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
  //           RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(20),
  //           ),
  //         ),
  //       ),
  //     ),
  //     checkboxTheme: CheckboxThemeData(
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(5),
  //       ),
  //       fillColor: MaterialStateProperty.resolveWith((states) => Colors.white),
  //     ),
  //     buttonTheme: ButtonThemeData(
  //       buttonColor: MaterialStateColor.resolveWith((states) => Colors.green),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(20),
  //       ),
  //     ),
  //     textTheme: const TextTheme(
  //       headline1: TextStyle(
  //         color: Colors.black,
  //         fontSize: 25,
  //         fontWeight: FontWeight.bold,
  //       ),
  //       headline2: TextStyle(
  //         color: Colors.black,
  //         fontSize: 20,
  //         fontWeight: FontWeight.bold,
  //       ),
  //       headline3: TextStyle(
  //         color: Colors.black,
  //         fontSize: 20,
  //       ),
  //       bodyText1: TextStyle(
  //         color: Colors.black,
  //         fontSize: 15,
  //       ),
  //     ),
  //   );
  //}
}
