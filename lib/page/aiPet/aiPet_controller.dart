import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:likeai/page/aiPet/aiPet_model.dart';
import 'package:http/http.dart' as http;

// class AiPetRepository {
//   Future<List<AiPetViewModel>> getAiFalse() async {
//     final response = await http.get(Uri.parse('uri'));
//     return jsonDecode(response.body).map<AIPet>((json) => Aipet.fromJson(json)).toString();
//   }
// }

// class AiPetViewModel with ChangeNotifier {
//   late AiPetRepository _aiPetRepository;

//   bool _isShow = false;
//   bool get isShow => _isShow;

//   void ontapAiPet() {
//     _isShow = !_isShow;
//     notifyListeners();
//   }
// }

class AiPetController extends ChangeNotifier {
  late Model _model;
  AiPetController() {
    _model = Model();
  }

  bool get menuAiPetVal => _model.menuAiPetVal;
  bool get alertAiPetVal => _model.alertAiPetVal;

  void showMenuAipet() {
    _model.menuAiPet();
    notifyListeners();
  }

  void showAlertAiPet() {
    _model.alertAiPetMessage();
    notifyListeners();
  }
}
