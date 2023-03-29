import 'dart:io';
import 'package:system/system.dart';

void clearSreen(){
  if (Platform.isWindows) {
    System.invoke("cls");
  } else {
    System.invoke("clear");
  }
}
