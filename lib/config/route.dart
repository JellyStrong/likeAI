import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:likeai/main.dart';
import 'package:likeai/page/join/join_view.dart';
import 'package:likeai/page/login/login_view.dart';

class MyRouter {
  final GoRouter router = GoRouter(debugLogDiagnostics: true, initialLocation: '/', routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MyWidget(),
    ),

    /* 
    로그인 
    */
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (BuildContext context, GoRouterState state) => const Login(),
    ),
    /* 
    리스트 목록 
    */
    // GoRoute(
    //   name: 'list',
    //   path: '/list',
    //   //builder: (BuildContext context, GoRouterState state) => const List(),
    // ),

    /* 
    신규가입 & 계정 찾기 
    */
    GoRoute(
      name: 'join',
      path: '/join',
      builder: (BuildContext context, GoRouterState state) => const Join(),
    ),

    /* 
    도움말 (로그인)
    */
    // GoRoute(
    //   name: 'help01',
    //   path: '/help01',
    //   //builder: (BuildContext context, GoRouterState state) => const HelpAccount(),
    // ),
    /* 
    도움말 (로그인)
    */
    // GoRoute(
    //   name: 'help01',
    //   path: '/help01',
    //   //builder: (BuildContext context, GoRouterState state) => const HelpAccount(),
    // ),
  ]);
}
