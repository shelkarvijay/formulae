import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:formulae/constants.dart/chapter-names.dart';
import 'package:formulae/screens/bsc/first_year/sem1/paper1/fy_sem_1_paper_1_chapter_1.dart';
import 'package:formulae/screens/bsc/first_year/sem1/paper1/fy_sem_1_paper_1_chapter_2.dart';
import 'package:formulae/screens/bsc/first_year/sem1/paper1/fy_sem_1_paper_1_chapter_3.dart';
import 'package:formulae/screens/bsc/first_year/sem1/paper1/fy_sem_1_paper_1_chapter_4.dart';
import 'package:formulae/screens/bsc/first_year/sem1/paper1/fy_sem_1_paper_1_chapter_5.dart';
import 'package:formulae/screens/bsc/first_year/sem1/paper1/fy_sem_1_paper_1_chapter_6.dart';
import 'package:formulae/screens/bsc/first_year/sem1/paper2/fy_sem_1_paper_2_chapter_1.dart';
import 'package:formulae/screens/bsc/first_year/sem1/paper2/fy_sem_1_paper_2_chapter_2.dart';
import 'package:formulae/screens/bsc/first_year/sem1/paper2/fy_sem_1_paper_2_chapter_3.dart';
import 'package:formulae/screens/bsc/first_year/sem1/paper2/fy_sem_1_paper_2_chapter_4.dart';
import 'package:formulae/screens/bsc/first_year/sem1/paper2/fy_sem_1_paper_2_chapter_5.dart';
import 'package:formulae/screens/bsc/first_year/sem1/paper2/fy_sem_1_paper_2_chapter_6.dart';
import 'package:formulae/screens/bsc/first_year/sem2/paper1/fy_sem_2_paper_1_chapter_1.dart';
import 'package:formulae/screens/bsc/first_year/sem2/paper1/fy_sem_2_paper_1_chapter_2.dart';
import 'package:formulae/screens/bsc/first_year/sem2/paper1/fy_sem_2_paper_1_chapter_3.dart';
import 'package:formulae/screens/bsc/first_year/sem2/paper1/fy_sem_2_paper_1_chapter_4.dart';
import 'package:formulae/screens/bsc/first_year/sem2/paper2/fy_sem_2_paper_2_chapter_1.dart';
import 'package:formulae/screens/bsc/first_year/sem2/paper2/fy_sem_2_paper_2_chapter_2.dart';
import 'package:formulae/screens/bsc/first_year/sem2/paper2/fy_sem_2_paper_2_chapter_3.dart';
import 'package:formulae/screens/bsc/first_year/sem2/paper2/fy_sem_2_paper_2_chapter_4.dart';
import 'package:formulae/screens/bsc/first_year/sem2/paper2/fy_sem_2_paper_2_chapter_5.dart';
import 'package:formulae/screens/shared/custom_appbar.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:math_expressions/math_expressions.dart';

class Formulae extends StatefulWidget {

  String chapterName;
  int chapterIndex;
  Formulae({required this.chapterName, required this.chapterIndex});
  
  @override
  State<Formulae> createState() => _FormulaeState();
}

class _FormulaeState extends State<Formulae> {

  late String chapterName;
  late int chapterIndex;

  @override
  void initState() {
    // var x = jsonEncode(sem1Paper1List);
    // print(x);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    chapterName = widget.chapterName;
    chapterIndex = widget.chapterIndex;
    return SafeArea(
        child: Scaffold(
            // backgroundColor: Theme.of(context).canvasColor,
            appBar: CustomAppbar(
              screenName: '',
              backgroundColorName: const Color.fromARGB(255, 38, 74, 107),
              titleColor: Colors.white,
            ),
            body: SingleChildScrollView(
              physics: const ScrollPhysics(),
            child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 38, 74, 107)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        // color: Colors.black,
                        padding: const EdgeInsets.only(left: 18, bottom: 5),
                        child: Text(
                          chapterName,
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(fontSize: 18),
                              color: const Color.fromARGB(255, 235, 238, 245)),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      // SizedBox(height: 10,),
                      getChapterWiseScreen(),
                    ])))));
  }
  
  getChapterWiseScreen() {
    switch (chapterName) {
      case sem1Paper1Chaptr1:
        return FYSem1Paper1Chapter1();
      
      case sem1Paper1Chaptr2: 
        return FYSem1Paper1Chapter2();

      case sem1Paper1Chaptr3:
        return FYSem1Paper1Chapter3();
      
      // ignore: no_duplicate_case_values
      case sem1Paper1Chaptr4:
        return FYSem1Paper1Chapter4();
      
      case sem1Paper1Chaptr5:
        return FYSem1Paper1Chapter5();

      case sem1Paper1Chaptr6:
        return FYSem1Paper1Chapter6();

      case sem1Paper2Chaptr1:
        return FYSem1Paper2Chapter1();

      case sem1Paper2Chaptr2:
        return FYSem1Paper2Chapter2();

      case sem1Paper2Chaptr3:
        return FYSem1Paper2Chapter3();
      
      case sem1Paper2Chaptr4:
        return FYSem1Paper2Chapter4();

      case sem1Paper2Chaptr5:
        return FYSem1Paper2Chapter5();
      
      case sem1Paper2Chaptr6:
        return FYSem1Paper2Chapter6();

      case sem2Paper1Chaptr1:
        return FYSem2Paper1Chapter1();

      case sem2Paper1Chaptr2:
        return FYSem2Paper1Chapter2();

      case sem2Paper1Chaptr3:
        return FYSem2Paper1Chapter3();

      case sem2Paper1Chaptr4:
        return FYSem2Paper1Chapter4();

      case sem2Paper2Chaptr1:
        return FYSem2Paper2Chapter1();

      case sem2Paper2Chaptr2:
        return FYSem2Paper2Chapter2();

      case sem2Paper2Chaptr3:
        return FYSem2Paper2Chapter3();

      case sem2Paper2Chaptr4:
        return FYSem2Paper2Chapter4();

      case sem2Paper2Chaptr5:
        return FYSem2Paper2Chapter5();

      default:
    }
  }
}
