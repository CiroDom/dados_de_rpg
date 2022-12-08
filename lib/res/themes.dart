import 'package:flutter/material.dart';

class Temas {

  static final ThemeData modo_light = ThemeData(
      brightness: Brightness.light,

      primaryColor: Color(0xffE5007B),
      backgroundColor: Color(0xffFFFFFF),
      scaffoldBackgroundColor: Color(0xffFFFFFF),

      textTheme: TextTheme(
        bodyText2: TextStyle(
          color: Color(0xff3A3B40),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xffFFFFFF),
      ),
      cardTheme: CardTheme(
        color: Color(0xffF2F4F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      )

  );

  static final ThemeData modo_dark = ThemeData(
      brightness: Brightness.dark,

      primaryColor: Color(0xffE5007B),
      backgroundColor: Color(0xff343434),
      scaffoldBackgroundColor: Color(0xff343434),

      textTheme: TextTheme(
        bodyText2: TextStyle(
          color: Color(0xffF1F1F1),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xff343434),
      ),
      cardTheme: CardTheme(
          color: Color(0xff3B3B3B),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          )
      )

  );

}//end class

// static final ThemeData modo_light = ThemeData(
//   brightness: Brightness.light,
//
//   backgroundColor: Color(0xffFFFFFF),
//   primaryColor: Color(0xffE5007B),
//
//   textTheme: TextTheme(),
//   appBarTheme: AppBarTheme(
//     backgroundColor: Color(0xffFFFFFF),
//     toolbarTextStyle: TextStyle(
//       color: Color(0xffE5007B),
//       fontSize: 25,
//     ),
//   ),
//   cardTheme: CardTheme(
//     color: Color(0xffF2F4F7),
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10)
//     ),
//   ),
// );
//
//
// static final ThemeData modo_dark = ThemeData(
//   brightness: Brightness.dark,
//   backgroundColor: Color(0xff343434),
//   primaryColor: Color(0xffE5007B),
//   appBarTheme: AppBarTheme(
//     backgroundColor: Color(0xff343434),
//     toolbarTextStyle: TextStyle(
//       color: Color(0xffE5007B),
//       fontSize: 20,
//       // locale: ,
//     ),
//   ),
//   cardTheme: CardTheme(
//     color: Color(0xff3B3B3B),
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10)
//     ),
//   ),
// );