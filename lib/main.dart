import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:likeai/page/aiPet/aiPet_controller.dart';
import 'package:likeai/page/aiPet/aipet_view.dart';
import 'package:likeai/page/login/login_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => AiPetController(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyWidget()
        //Login(),
        );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [const Login(), aiPet(context)],
      ),
    );
  }
}
