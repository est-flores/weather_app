import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_weather_example_flutter/src/features/weather_page/weather_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyleWithShadow = GoogleFonts.poppins(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      shadows: [
        BoxShadow(
          color: Colors.black12.withOpacity(0.25),
          spreadRadius: 1,
          blurRadius: 4,
          offset: const Offset(0, 0.5),
        )
      ],
    );
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: TextTheme(
          headline1: textStyleWithShadow,
          headline2: textStyleWithShadow,
          headline3: textStyleWithShadow,
          headline4: textStyleWithShadow,
          headline5: textStyleWithShadow,
          subtitle1: GoogleFonts.poppins(color: Colors.black),
          bodyText2: GoogleFonts.poppins(color: Colors.black),
          bodyText1: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.w500),
          caption: GoogleFonts.poppins(color: Colors.black, fontSize: 13),
        ),
      ),
      home: const WeatherPage(city: 'Guatemala'),
    );
  }
}
