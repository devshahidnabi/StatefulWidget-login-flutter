import 'package:flutter/material.dart';
import 'package:login_stateful/src/screens/login_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false
        ,
      home: Scaffold(
        body: const LoginScreen(),
        appBar: AppBar(
          title: const Text('Log In'),
        ),
      )
    );
  }
}