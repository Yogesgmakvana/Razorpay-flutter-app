import 'package:chats_app/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
   ThemeMode _themeMode=ThemeMode.light;

  void _toggleTheming(){
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: _themeMode,
      theme: ThemeData(
        cardTheme:CardThemeData(
          elevation: 5,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 45,
          ),
        ),
        primaryColor: Colors.orange,
        brightness: Brightness.light,
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.white,
        brightness: Brightness.dark,
      ),
      home: HomeScreen(theming:_toggleTheming),
    );
  }
}

