import 'package:cat_facts/constants/colors.dart';
import 'package:cat_facts/providers/fact_display_provider.dart';
import 'package:cat_facts/screens/fact_display.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => FactDisplayProvider()),
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cat Facts',
      theme: ThemeData(
        primarySwatch: colorPrimary,
        scaffoldBackgroundColor: colorPrimary
      ),
      home: const FactDisplay(),
    );
  }
}