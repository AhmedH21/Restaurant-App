import 'package:dsc_task05/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'screens/RestaurantMenu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DSC TASK-5',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
      ).copyWith(
        primaryColor: Color(0xff111416),
        scaffoldBackgroundColor: Color(0xff1E2326),
      ),
      initialRoute: '/sign_up',
      routes: {
        '/restaurant': (context)=> RestaurantMenu(),
        '/sign_up': (context)=> SignUpScreen(),
      },
    );
  }
}

