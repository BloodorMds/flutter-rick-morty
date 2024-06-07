import 'package:duolift/screens/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffbb86fc),
          brightness: Brightness.dark,
        ).copyWith(
          primaryContainer: const Color(0xffbb86fc),
          onPrimaryContainer: Colors.black,
          secondaryContainer: const Color(0xff03dac6),
          onSecondaryContainer: Colors.black,
          error: const Color(0xffcf6679),
          onError: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
