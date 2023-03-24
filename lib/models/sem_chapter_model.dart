import 'package:flutter/painting.dart';

class SemChapterModel {
  String chapterName;
  // Color foreGrndColor, backGrndColor, gradientColor;

  SemChapterModel({required this.chapterName});

  Map toJson() => {
    'sem1Paper1List': chapterName
  };
}