
import 'package:flutter/material.dart';

const colorsList = [
Colors.blue,
Colors.red,
Colors.teal,
Colors.purple
];

class AppTheme{

final int selectedColor;


  AppTheme({this.selectedColor = 0}):assert(selectedColor>=0,'Selected color must be greater than 0'),
  assert (selectedColor<colorsList.length, 'Selected colors must be less or equal than ${colorsList.length}');

  ThemeData getTheme()=> ThemeData(
    useMaterial3:true,
    colorSchemeSeed: colorsList[selectedColor] 
  );

}