import 'package:flutter/material.dart';

class RadioCheckexampleBoxProvider extends ChangeNotifier {
  TextEditingController firstrName = TextEditingController();
  TextEditingController secondName = TextEditingController();
  TextEditingController thirdName = TextEditingController();
  String gender = 'gender', male = 'male', female = 'female';
  List<String> hobby = [];
  bool isCricket = false, isFootBall = false, isShowData = false;
  double value1 = 100.0;

  void sliderEx(bool value) {
    value1 = value1;
    notifyListeners();
  }

  void checkGenderEx(String value) {
    isShowData = false;
    gender = value;
    notifyListeners();
  }

  void checkCricketEx(bool value) {
    isShowData = false;
    isCricket = value;
    isCricket == true ? hobby.add('Cricket') : hobby.remove('Cricket');

    notifyListeners();
  }

  void checkFootballEx(bool value) {
    isShowData = false;
    isFootBall = value;
    isFootBall == true ? hobby.add('FootBall') : hobby.remove('FootBall');
    notifyListeners();
  }

  void showDataEx() {
    isShowData = true;
    notifyListeners();
  }
}
