import 'package:flutter/material.dart';
class Providerclass with ChangeNotifier{
  int counter=0;
  int get getcounter{
    return counter;
  }
  void incrementcounter(){
    counter++;
    notifyListeners();
  }
}