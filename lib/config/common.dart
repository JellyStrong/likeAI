import 'package:flutter/material.dart';

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

class DeviceInfo {
  deviceSize(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
  }
}
