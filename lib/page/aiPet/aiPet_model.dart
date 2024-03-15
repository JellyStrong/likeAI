// class Model {
//   bool _commentLayout = false;

//   bool get commentLayout => _commentLayout;
//   //int commentLayout() => ++_count;
// }

// class AIPet {
//   bool? commentLayout;

//   AIPet({this.commentLayout});

//   factory AIPet.fromJson(Map<String, dynamic> json) {
//     return AIPet(commentLayout: json['commentLayout']);
//   }
// }

class Model {
  bool _menuAiPetVal = false;
  bool _alertAiPetVal = false;

  bool get menuAiPetVal => _menuAiPetVal;
  bool get alertAiPetVal => _alertAiPetVal;

//AIPet 메뉴
  bool menuAiPet() {
    return _menuAiPetVal = !_menuAiPetVal;
  }

//AIPet Alert
//delay 3초
//확인,취소
  bool alertAiPetMessage() {
    return _alertAiPetVal = !_alertAiPetVal;
  }
}
