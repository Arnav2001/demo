import 'package:demo/Pages/homeScreen.dart';
import 'package:demo/Pages/splashScreen.dart';
import 'package:demo/Services/providerService.dart';
import 'package:demo/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Pages/detailScreen.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context)=>TaskProvider(),
      child:const MyApp() ,)
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: darkChocolate),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context)=> const SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/detail': (context) => const DetailScreen(),
      },
    );
  }
}