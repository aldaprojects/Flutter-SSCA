import 'package:flutter/material.dart';
import 'package:sockets2/src/pages/home_page.dart';
import 'package:sockets2/src/pages/register_page.dart';
import 'package:sockets2/src/pages/start_page.dart';
import 'package:sockets2/src/pages/login_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/'       : ( BuildContext context) => StartPage(),
    'login'       : ( BuildContext context) => LoginPage(),
    'register'       : ( BuildContext context) => SingUpPage(),
    'home'       : ( BuildContext context) => HomePage()
  };
}