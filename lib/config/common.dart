import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class HelpAIPet extends StatelessWidget {
  final VoidCallback onpressed;
  final Widget icon;
  const HelpAIPet({super.key, required this.onpressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Material(
        shape: CircleBorder(), //동그랗게
        clipBehavior: Clip.antiAlias, //동그란걸 부드럽게
        color: Colors.amber,
        child: IconButton(onPressed: onpressed, icon: icon));
  }
}

helpFBtn(BuildContext context, String path) {
  return FloatingActionButton(
    child: Icon(
      Icons.question_mark,
      size: 26,
    ),
    backgroundColor: Colors.white,
    foregroundColor: Colors.grey,
    onPressed: () {
      //context.pushNamed(path);
    },
  );
}

/* 
접속중인 디바이스 정보관련 제공 
*/
deviceSize(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
}

/* 
  alert창
  */
/* 알림 delay */
alertAiPet(String msg, int milliseconds) {
  Timer(Duration(milliseconds: milliseconds), () {
    Column(
      children: [
        Text(msg),
      ],
    );
  });
}

Future<bool> sadasd() async {
  return Future.delayed(Duration(microseconds: 3000)).then((value) => true);
}

/* 확인 */
Widget alertAiPet1(String msg) {
  return Column(
    children: [Text((msg)), TextButton(onPressed: () {}, child: Text("확인"))],
  );
}

/* 확인,취소 */
Widget alertAiPet2(String msg) {
  return Column(children: [
    Text(msg),
    Row(children: [
      TextButton(onPressed: () {}, child: Text("확인")),
      TextButton(onPressed: () {}, child: Text("취소")),
    ]),
  ]);
}

Widget menuAipet(String label, Color textColor, Color backColor, BuildContext context, String router) {
  return GestureDetector(
    onTap: () {
      context.go(router);
    },
    child: Chip(
      label: Text(
        label,
        style: TextStyle(color: textColor),
      ),
      backgroundColor: backColor,
      elevation: 3.0,
      shadowColor: Colors.grey,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Color(0x00FFFFFF)),
        borderRadius: BorderRadius.all(
          Radius.circular(17),
        ),
      ),
    ),
  );
}
