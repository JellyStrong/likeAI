import 'package:flutter/material.dart';
import 'package:likeai/config/common.dart';
import 'package:likeai/page/aiPet/aiPet_controller.dart';
import 'package:provider/provider.dart';

Widget aiPet(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  size.width;
  size.height;
  AiPetController? controller;
  controller = Provider.of<AiPetController>(context, listen: false);

  List<String> menuItem = <String>["회원가입", "정보찾기", "도움말"];

  return Positioned(
    bottom: 10,
    right: 5,
    child: Column(
      children: [
        //말풍선 디폴트값 flasa;
        Consumer<AiPetController>(builder: (context, value, child) {
          return Visibility(visible: controller!.alertAiPetVal, child: Text("안녕하세요."));
        }),
        //Consumer<>(builder: ),
        Row(
          children: [
            Consumer<AiPetController>(builder: (context, value, child) {
              return Visibility(
                visible: controller!.menuAiPetVal,
                child: Container(
                  //  padding: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  width: 300,
                  height: 50,
                  child: Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.start,
                        spacing: 10, //상하(좌우)공간
                        runSpacing: 10, //좌우(상하)공간
                        children: [
                          chips("회원가입", Colors.white, Colors.yellow),
                          chips("계정찾기", Colors.white, Colors.orange),
                          chips("도움", Colors.white, Colors.blue),
                          chips("도움", Colors.white, Colors.blue),
                          chips("도움", Colors.white, Colors.blue),
                          chips("도움", Colors.white, Colors.blue),
                        ],
                      ),
                    ),

                    // child: ListView.builder(
                    //   scrollDirection: Axis.horizontal,
                    //   itemCount: menuItem.length,
                    //   itemBuilder: (BuildContext context, int index) {
                    //     print(index);
                    //     return Text(
                    //       menuItem[index],
                    //     );
                    //   },
                    // ),
                  ),
                ),
              );
            }),
            Container(
              width: 50,
              height: 50,
              child: GestureDetector(
                child: Image.asset('assets/image/aiPet/aiPet_02.png'),
                onTap: () {
                  // context.read<ShowMenuModel>().showMemuChlick();
                  controller?.showMenuAipet();
                  print("누름");

                  //1. 누르면 도움 메뉴
                  //2. 사용중에 문제생기면 말풍선
                },
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
