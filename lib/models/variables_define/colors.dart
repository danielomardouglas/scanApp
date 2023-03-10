import 'package:flutter/material.dart';
import 'package:scanapp/view_models/providers/main.dart';

class ColorsOf{
  static ColorsOf? _instance;
  ColorsOf._();
  factory ColorsOf() => _instance ??=ColorsOf._();





  bool? darkMode; // false ==> light , true ==> dark

  void mode({context,isDark}){

    var brightness = (isDark==null)? MediaQuery.of(context).platformBrightness : null;
    darkMode = (MainProvider().user!=null)?(MainProvider().user!.isDark=="dark") : brightness == Brightness.dark;

  }
  // FF9500 ==> FF9F0A
  Color primaryForGround(){
    return (darkMode!)?Color(0xFFFF9F0A): Color(0xFFFF9500);
  }
  // 242426 ==> FF9F0A
  Color primaryBackGround(){
    return (darkMode!)?Color(0xFFFF9F0A): Color(0xFF242426);
  }
  // D70015 ==> FF6961
  Color deleteItem(){
    return (darkMode!)?Color(0xFFFF6961): Color(0xFFD70015);
  }
  // 64D2FF ==> 004267
  Color onGoingItem(){
    return (darkMode!)?Color(0xFF004267):Color(0xFF64D2FF);
  }
  // 30DB5B ==> 25502A
  Color finisheItem(){
    return (darkMode!)?Color(0xFF25502A): Color(0xFF30DB5B);
  }
  // EBEBF0 ==> 242426
  Color backGround(){
    return ((darkMode != null) && darkMode!)?Color(0xFF242426):Color(0xFFEBEBF0);
  }
  // FF9500 ==> 363638
  Color profilField(){
    return (darkMode!)?Color(0xFF363638):Color(0xFFFF9500);
  }
  // 545456 ==> AEAEB2
  Color importField(){
    return (darkMode!)?Color(0xFFAEAEB2):Color(0xFF545456);
  }
  Color hintText(){
    return (darkMode!)?Colors.black38:Color(0xFF545456);
  }
  // FF9500 ==> 242426
 Color containerThings(){
    return (darkMode!)?Color(0xFF242426):Color(0xFFFF9500);
  }
  // 242426 ==> EBEBF0
  Color borderContainer(){
    return (darkMode!)?Color(0xFFEBEBF0):Color(0xFF242426);
  }


}