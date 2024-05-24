import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class My_Funtions{

  static f_toast (BuildContext context,String msg, var clr ){
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: clr,
        textColor: Colors.white,
        fontSize: 16.0);
  }

}