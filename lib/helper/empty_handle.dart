import 'dart:io';

import 'clear_screen.dart';

void emptyHandle(String info) {
  print(info);
  print("\n\nPress Enter to go back...");

  stdin.readLineSync();
  clearSreen();
}
