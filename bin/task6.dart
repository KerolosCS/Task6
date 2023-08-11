// ignore_for_file: unused_local_variable, prefer_typing_uninitialized_variables, avoid_function_literals_in_foreach_calls

import 'dart:io';


void sentanceDraw(String s) {
  for (int i = 0; i < (s.length + 4); i++) {
    stdout.write('-');
  }
  print('\n| $s |');
  for (int i = 0; i < (s.length + 4); i++) {
    stdout.write('-');
  }
}
