import 'package:chat_ai/app.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF212121)),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
           elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),  
          ),
        ),


      ),
      
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF212121), brightness: Brightness.dark),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),  
          ),
        ),
        listTileTheme: ListTileThemeData(
          tileColor: Color(0XFF232729),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
            side: BorderSide(
              // ignore: deprecated_member_use
              color: Colors.grey.withOpacity(0.3),
              width: 0.5,
            ),
          ),
        )
    
      ),
      themeMode: ThemeMode.dark,
      home: const App(),
    );
  }
}

