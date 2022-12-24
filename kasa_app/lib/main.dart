import 'package:flutter/material.dart';
import 'package:kasa_app/theme.dart';
import 'screens/screens.dart';
import 'package:kasa_app/theme.dart';
void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
    ));

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: AppTheme.light(),
      // darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.dark,
      title: 'Chapter',
      home: HomeScreen(),
    );
  }
}
