// import 'package:app1/common/floatingBtn.dart';
// import 'package:app1/common/message.dart';
// import 'package:app1/style/font.dart';
// import 'package:go_router/go_router.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:likeai/config/font.dart';
import 'package:likeai/page/aiPet/aiPet_controller.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final String id = "";
  final String pw = "";
  bool emailEnable = false;
  bool pwEnable = false;
  bool loginEnable = false;
  FocusNode emailFocusNode = FocusNode();
  FocusNode pwFocusNode = FocusNode();
  final _emailKey = GlobalKey<FormState>();
  final _pwKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _pwController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Service.selectUserInfo().then((value) {
    //   setState(() {
    //     print(value.name);
    //   });
    // });

    emailFocusNode.addListener(
      () => setState(
        () {
          emailEnable = emailFocusNode.hasFocus;
        },
      ),
    );
    pwFocusNode.addListener(
      () => setState(
        () {
          pwEnable = pwFocusNode.hasFocus;
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _pwController.dispose();
    emailFocusNode.dispose();
    pwFocusNode.dispose();
  }

  loginTextFieldForm(
      GlobalKey key, TextEditingController controller, FocusNode focusNode, String text, bool enable, String save) {
    String _email = "";
    String _pw = "";
    String val = "";

    return Container(
      width: 250,
      child: TextFormField(
        key: key,
        controller: controller,
        focusNode: focusNode,
        maxLength: 16,
        textAlign: TextAlign.center,
        showCursor: val.isEmpty ? false : true,
        obscureText: text == "패스워드" ? true : false,
        decoration: InputDecoration(
          counterText: "",
          hintText: text,
          hintStyle: TextStyle(
            fontFamily: MyFontFamily.chab,
            fontSize: 30,
            color: enable ? Colors.blue : Colors.grey,
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        onChanged: (value) {
          val = value;
          save = val;
          setState(() {
            if (_email.isNotEmpty && _pw.isNotEmpty) {
              print(">>>>>>>>>>>loginbtn");
              loginEnable = true;
            }
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    AiPetController? controller;
    controller = Provider.of<AiPetController>(context, listen: false);

    return Scaffold(
      //floatingActionButton: helpFBtn(context, "helpAccount"),
      body: Center(
        child: Container(
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                //ID 폼
                loginTextFieldForm(_emailKey, _emailController, emailFocusNode, "이메일", emailEnable, id),
                //PW 폼
                loginTextFieldForm(_pwKey, _pwController, pwFocusNode, "패스워드", pwEnable, pw),
                //Login 버튼

                InkWell(
                  onTap: () {
                    controller?.showAlertAiPet(true);
                    Timer(Duration(seconds: 1), () {
                      //_alertAiPetVal = false;

                      controller?.showAlertAiPet(false);
                    });

                    /*  if (_emailController.text.length <= 0 || _pwController.text.length <= 0) {
                      //이메일 또는 패스워드에 값이 없으면
                      // myShowSnackBar1(context, "이메일 또는 패스워드를 입력해주세요.");
                    } else {
                      if (_emailController.text == "장인영" && _pwController.text == "1234") {
                        //myShowSnackBar1(context, "로그인 되었습니다.");
                        //context.pushNamed('list');
                        //입력값 초기화
                        _emailController.clear();
                        _pwController.clear();
                      } else {
                        //myShowSnackBar1(context, "일치하는 계정 정보가 없습니다. 다시 입력해주세요.");
                        //입력값 초기화
                        _emailController.clear();
                        _pwController.clear();
                      }
                    }*/
                  },
                  child: Text(
                    "로그인",
                    style: TextStyle(
                        fontFamily: MyFontFamily.chab, fontSize: 30, color: loginEnable ? Colors.blue : Colors.grey),
                  ),
                ),
                // TextButton(onPressed: () => context.pushNamed('list'), child: Text("로그인패스")),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
