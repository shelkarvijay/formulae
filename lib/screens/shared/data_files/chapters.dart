import 'package:formulae/models/sem_chapter_model.dart';

class Chapters {
  List<SemChapterModel> sem1Paper1List = [
    SemChapterModel(chapterName: "Presentation of Data"),
    SemChapterModel(chapterName: "Measures of Central Tendency"),
    SemChapterModel(chapterName: "Measure of Dispersion"),
    SemChapterModel(chapterName: "Moments"),
    SemChapterModel(chapterName: "Skewness and Kurtosis"),
    SemChapterModel(chapterName: "Theory of Attributes")];

  List<SemChapterModel> sem1Paper2List = [
    SemChapterModel(chapterName: "Sample space and events"),
    SemChapterModel(chapterName: "Probability"),
    SemChapterModel(chapterName: "Conditional Probability and Independence"),
    SemChapterModel(chapterName: "Mathematical Expectation"),
    SemChapterModel(chapterName: "Univariate Probability distributions"),
    SemChapterModel(chapterName: "Standard Discrete Probability Distributions")
  ];

  List<SemChapterModel> sem2Paper1List = [
    SemChapterModel(chapterName: "Correlation"),
    SemChapterModel(chapterName: "Regression Models"),
    SemChapterModel(chapterName: "Curve Fitting"),
    SemChapterModel(chapterName: "Index Numbers"),
  ];

  List<SemChapterModel> sem2Paper2List = [
    SemChapterModel(chapterName: "Standard Discrete Probability Distributions"),
    SemChapterModel(chapterName: "Bivariate Discrete Probability Distributions"),
    SemChapterModel(chapterName: "Mathematical Expectation (Bivariate)")
  ];

  Chapters({required this.sem1Paper1List, required this.sem1Paper2List, required this.sem2Paper1List, required this.sem2Paper2List});

  Map toJson() => {
      'sem1Paper1List': sem1Paper1List,
      'sem1Paper2List': sem1Paper2List,
      'sem2Paper1List': sem2Paper1List,
      'sem2Paper2List': sem2Paper2List
    };
}