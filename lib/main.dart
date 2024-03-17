import 'package:flutter/material.dart';
import 'package:likeai/config/route.dart';
import 'package:likeai/page/aiPet/aiPet_controller.dart';
import 'package:likeai/page/aiPet/aipet_view.dart';
import 'package:likeai/page/login/login_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => AiPetController(), child: const MyApp()));
}

//라우터
MyRouter _myRouter = MyRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _myRouter.router,
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
