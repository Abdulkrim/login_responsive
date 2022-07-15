import 'package:flutter/material.dart';
import 'package:login/Login_Screen.dart';

import 'date_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // hello Abdo
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DatePicker(),
    );
  }
}
//login
// 1.checkoutmaster
// 2.update master
// 3.create branch
// 4. code ......
