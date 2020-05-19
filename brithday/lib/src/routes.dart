import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './screens/landing.dart';
import './screens/login.dart';
import './screens/signup.dart';

abstract class Routes {

  static MaterialPageRoute materialRoutes(RouteSettings settings){
    switch(settings.name){
      case '/':
      return MaterialPageRoute(builder: (context) => Landing());
      break;
      case '/signup':
      return MaterialPageRoute(builder: (context) => Signup());
      break;
      case '/login':
      return MaterialPageRoute(builder: (context) => Login());
      default:
      return MaterialPageRoute(builder: (context) => Login());
    }
  }

  static CupertinoPageRoute cupertinoRoutes(RouteSettings settings){
    switch(settings.name){
      case '/':
      return CupertinoPageRoute(builder: (context) => Landing());
      break;
      case '/signup':
      return CupertinoPageRoute(builder: (context) => Signup());
      break;
      case '/login':
      return CupertinoPageRoute(builder: (context) => Login());
      default:
      return CupertinoPageRoute(builder: (context) => Login());
    }
  }
}