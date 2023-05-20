import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tic_tac_toy_project/function/step_five.dart';
import 'package:tic_tac_toy_project/function/step_four.dart';
import 'package:tic_tac_toy_project/function/step_one.dart';
import 'package:tic_tac_toy_project/function/step_six.dart';
import 'package:tic_tac_toy_project/function/step_three.dart';
import 'package:tic_tac_toy_project/function/step_two.dart';

T getRandomElement<T>(List<T> list) {
  final random = new Random();
  var i = random.nextInt(list.length);
  return list[i];
}

int getData() {
  var list = [0, 1, 2, 3, 5, 6, 7, 8];
  // var list = [5];

  var element = getRandomElement(list);
  print(element);

  return element;
}

int zeroIndex() {
  // var list = [1, 2, 3, 4, 5, 6, 7, 8];
  var list = [5];

  var zeroElement = getRandomElement(list);

  print("zeroElement --  $zeroElement");

  return zeroElement;
}

void fun(List<List<int>> data) {
  if (data[0][0] == -1 && data[0][1] == -1 && data[0][2] == -1 && data[1][0] == -1 && data[1][1] == 0 && data[1][2] == -1 && data[2][0] == -1 && data[2][1] == -1 && data[2][2] == -1) {
    var element = getData();
    if (element == 0) {
      data[0][0] = 1;
    } else if (element == 1) {
      data[1][0] = 1;
    } else if (element == 2) {
      data[2][0] = 1;
    } else if (element == 3) {
      data[0][1] = 1;
    } else if (element == 5) {
      data[2][1] = 1;
    } else if (element == 6) {
      data[0][2] = 1;
    } else if (element == 7) {
      data[1][2] = 1;
    } else if (element == 8) {
      data[2][2] = 1;
    } else {
      debugPrint("position is not found");
    }
  }
  stepOne(data);
  stepTwo(data);
  stepThree(data);

  if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    var zeroIndexElement = zeroIndex();
    debugPrint("zeroIndexElement -- $zeroIndexElement");

    if (zeroIndexElement == 1) {
      data[1][0] = 1;
    } else if (zeroIndexElement == 2) {
      data[2][0] = 1;
    } else if (zeroIndexElement == 3) {
      data[0][1] = 1;
    } else if (zeroIndexElement == 4) {
      data[1][1] = 1;
    } else if (zeroIndexElement == 5) {
      data[2][1] = 1;
    } else if (zeroIndexElement == 6) {
      data[0][2] = 1;
    } else if (zeroIndexElement == 7) {
      data[1][2] = 1;
    } else if (zeroIndexElement == 8) {
      data[2][2] = 1;
    } else {
      debugPrint("position is not found");
    }
  }
  stepFour(data);
  stepFive(data);
  stepSix(data);

  // else if(data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0)
  // 0 -1 -1
  // -1 -1 1
  // -1 -1 -1
}
