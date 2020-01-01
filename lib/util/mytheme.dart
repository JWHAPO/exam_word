import 'package:flutter/material.dart';

enum MyThemeKeys {LIGHT, DARK, DARKER}

class MyTheme{

  static final largeTextSize = 26.0;
  static final mediumTextSize = 20.0;
  static final bodyTextSize = 16.0;

  static final String fontNameDefault = 'NanumGothic-Regular';

  static final ThemeData lightThemeBase = ThemeData.light();
  static final ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
          headline: lightThemeBase.textTheme.headline.copyWith(
            fontFamily: fontNameDefault,
            fontSize: mediumTextSize,
            color: Colors.black,
          ),
          title: lightThemeBase.textTheme.title.copyWith(
              fontFamily: fontNameDefault,
              fontSize: mediumTextSize,
              color: Colors.black
          ),
          display1: lightThemeBase.textTheme.headline.copyWith(
            fontFamily: fontNameDefault,
            fontSize: bodyTextSize,
            color: Colors.white,
          ),
          display2: lightThemeBase.textTheme.headline.copyWith(
            fontFamily: fontNameDefault,
            fontSize: bodyTextSize,
            color: Colors.grey,
          ),
          caption: lightThemeBase.textTheme.caption.copyWith(
            color: Color(0xFFCCC5AF),
          ),
          body1: lightThemeBase.textTheme.body1.copyWith(color: Color(0xFF807A6B))
      ),
      primaryColor: Color(0xFF5AAEFF),
      //primaryColor: Color(0xff4829b2),
      indicatorColor: Color(0xFF807A6B),
      scaffoldBackgroundColor: Color(0xFFF5F5F5),
      accentColor: Color(0xFFFFF8E1),
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 20.0,
      ),
      buttonColor: Colors.white,
      backgroundColor: Colors.white,
      tabBarTheme: lightThemeBase.tabBarTheme.copyWith(
        labelColor: Color(0xFFbdbdbd),
        unselectedLabelColor: Colors.grey,
      )
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.grey,
    brightness: Brightness.dark,
  );

  static final ThemeData darkerTheme = ThemeData(
    primaryColor: Colors.black,
    brightness: Brightness.dark,
  );

  static ThemeData getThemeFromKey(MyThemeKeys themeKey) {
    switch (themeKey) {
      case MyThemeKeys.LIGHT:
        return lightTheme;
      case MyThemeKeys.DARK:
        return darkTheme;
      case MyThemeKeys.DARKER:
        return darkerTheme;
      default:
        return lightTheme;
    }
  }

}