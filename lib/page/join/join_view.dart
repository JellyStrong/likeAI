import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Join extends StatefulWidget {
  const Join({super.key});

  @override
  State<Join> createState() => _JoinState();
}

class _JoinState extends State<Join> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("dsaads"),
      TextButton(
          onPressed: () {
            context.go("/login");
          },
          child: Text("뒤로가기"))
    ]);
  }
}
