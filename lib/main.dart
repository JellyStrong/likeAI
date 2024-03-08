import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:likeai/page/aiPet/aipet_view.dart';
import 'package:likeai/page/login/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter Demo', home: MyWidget()
        //Login(),
        );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [const Login(), aiPet()],
    );
  }
}
