import 'package:flutter/material.dart';
import 'package:flutter_hub/presentation/user_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hub',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Hub'),
          centerTitle: true,
        ),
        body: UserPage(),
      ),
      //initialRoute: '/',
      //routes: {
      //  '/': (BuildContext context) => UserPage(),
      //  '/userdetail': (BuildContext context) => UserDetailPage(),
      //},
    );
  }
}
