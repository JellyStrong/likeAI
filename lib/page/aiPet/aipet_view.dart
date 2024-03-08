import 'package:flutter/material.dart';

// Widget aiPet() {
//   bool comment = false;
//   return Positioned(
//     bottom: 10,
//     right: 5,
//     child: Container(
//       child: GestureDetector(
//         child: Image.asset('assets/image/aiPet/aiPet_02.png'),
//         onTap: () {
//           print("누름");

//           //1. 누르면 도움 메뉴
//           //2. 사용중에 문제생기면 말풍선
//         },
//       ),
//     ),
//   );
// }

Widget aiPet() {
  bool comment = false;
  return Positioned(
    bottom: 10,
    right: 5,
    child: a(),
  );
}

Widget a() {
  return Stack(
    children: [
      CustomMultiChildLayout(
        delegate: aaaaa(),
        children: [
          LayoutId(
              id: '2',
              child: Container(
                color: Colors.amber,
                child: Text("1"),
              ))
        ],
      )
    ],
  );
}

class aaaaa extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    // TODO: implement performLayout
    //hasChild('2');
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    // TODO: implement shouldRelayout
    throw UnimplementedError();
  }
}
