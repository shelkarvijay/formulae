import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class FYSem1Paper1Chapter2 extends StatefulWidget {
  @override
  State<FYSem1Paper1Chapter2> createState() => _FYSem1Paper1Chapter2();
}

class _FYSem1Paper1Chapter2 extends State<FYSem1Paper1Chapter2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // height: MediaQuery.of(context).size.height / 1.16,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          getFormulaeTitle(1, "Arithmetic Mean (A.M.) :"),
          getFirstFormula(),
          getSecondFormula(),
          // const SizedBox(height: 10,),
          getFormulaeTitle(3, "Combined mean :"),
          // const SizedBox(height: 10,),
          getThirdFormula(),
          getFormulaeTitle(4, "Median for individual observations :"),
          getFourthFormula(),
          getFormulaeTitle(5, "Median for frequency distribution :"),
          getFifthFormula(),
          getFormulaeTitle(6, "Mode for frequency distribution :"),
          getSixFormula(),
          getFormulaeTitle(7, "Geometric Mean (G.M.) :"),
          getSeventhFormula(),
          getFormulaeTitle(8, "Harmonic Mean (H.M.) :"),
          getEightFormula(),
          getNinethFormula("9."),
          getFormulaeTitle(10, "Weighted Arithmetic Mean :"),
          getTenFormula(),
          getFormulaeTitle(11, "Weighted Geometric Mean :"),
          getCommonWidthImg(11, "fySem1P1C11"),
          getFormulaeTitle(12, "Weighted Harmonic Mean :"),
          getCommonWidthImg(12, "fySem1P1C12"),
          getFormulaeTitle(13, "Quartiles :"),
          getThirteenFormula(),
          getFormulaeTitle(14, "Deciles :"),
          getFourteenFormula(),
          getFormulaeTitle(15, "Percentiles :"),
          getFifthteenFormula(),
          getFormulaeTitle(16, "Relations between partition values :"),
          getSixteenFormula(),
          const SizedBox(height: 20,),
          getSeventeenFormula("17. "),

        ]));
  }

  Widget getFormulaeTitle(int index, String evaluate) {
    return Container(
      // padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      child: Wrap(
      	direction: Axis.horizontal,
        alignment: WrapAlignment.start,
        children: <Widget>[
          Text(
            '$index. ',
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(fontSize: 11),
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 43, 44, 44)),
          ),
          Text(
            evaluate,
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(fontSize: 13),
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 46, 47, 49)),
          ),
        ],
      ),
    );
  }

  Widget getFirstFormula() {
    return Container(
        child: Image.asset(
      'assets/images/fy/sem1/paper1/fySem1P1C1.png',
      fit: BoxFit.cover,
    ));
  }

  Widget getSecondFormula() {
    return Container(
      // color: Colors.red,
      child: Wrap(
        // direction: Axis.horizontal,
        children: <Widget>[
          Text(
            '2. ',
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(fontSize: 13),
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 43, 44, 44)),
          ),
          Text(
            "∝ % trimmed mean of a dataset is an arithmetic mean of observations after ignoring ∝ % lowest" +
                "and ∝ % highest observations from the dataset.",
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(fontSize: 13),
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 46, 47, 49)),
          ),
        ],
      ),
    );
  }

  Widget getThirdFormula() {
    return Container(
        child: Image.asset(
      'assets/images/fy/sem1/paper1/fySem1P1C3.png',
      fit: BoxFit.cover,
      width: 250,
    ));
  }

  Widget getFourthFormula() {
    return Container(
        child: Image.asset(
      'assets/images/fy/sem1/paper1/fySem1P1C4.png',
      fit: BoxFit.cover,
      width: 250,
    ));
  }

  Widget getFifthFormula() {
    return Container(
        child: Image.asset(
      'assets/images/fy/sem1/paper1/fySem1P1C5.png',
      fit: BoxFit.cover,
      width: 400,
    ));
  }

  Widget getSixFormula() {
    return Container(
        child: Image.asset(
      'assets/images/fy/sem1/paper1/fySem1P1C6.png',
      fit: BoxFit.cover,
      width: 250,
    ));
  }

  Widget getSeventhFormula() {
    return Container(
        child: Image.asset(
      'assets/images/fy/sem1/paper1/fySem1P1C7.png',
      fit: BoxFit.cover,
      width: 300,
    ));
  }

  Widget getEightFormula() {
    return Container(
        child: Image.asset(
      'assets/images/fy/sem1/paper1/fySem1P1C8.png',
      fit: BoxFit.cover,
      width: 300,
    ));
  }

  Widget getNinethFormula(String formlulaNo) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      direction: Axis.horizontal,
      children: <Widget>[
        Text(formlulaNo,
        style: GoogleFonts.montserrat(
                textStyle: const TextStyle(fontSize: 11),
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 43, 44, 44))),
        Container(
          child: Image.asset(
        'assets/images/fy/sem1/paper1/fySem1P1C9.png',
        fit: BoxFit.cover,
        width: 200,
      ))
      ],
    );
  }

  Widget getTenFormula() {
    return Container(
        child: Image.asset(
      'assets/images/fy/sem1/paper1/fySem1P1C10.png',
      fit: BoxFit.cover,
      width: 320,
    ));
  }

  Widget getCommonWidthImg(int formulaId, String img) {
    return Container(
        child: Image.asset(
      'assets/images/fy/sem1/paper1/$img.png',
      fit: BoxFit.cover,
      width: formulaId == 11 ? 150 : 130,
    ));
  }

  Widget getThirteenFormula() {
    return Container(
        child: Image.asset(
      'assets/images/fy/sem1/paper1/fySem1P1C13.png',
      fit: BoxFit.cover,
      width: 300,
    ));
  }

  Widget getFourteenFormula() {
    return Container(
        child: Image.asset(
      'assets/images/fy/sem1/paper1/fySem1P1C14.png',
      fit: BoxFit.cover,
      width: 300,
    ));
  }

  Widget getFifthteenFormula() {
    return Container(
        child: Image.asset(
      'assets/images/fy/sem1/paper1/fySem1P1C15.png',
      fit: BoxFit.cover,
      width: 300,
    ));
  }

  Widget getSixteenFormula() {
    return Container(
        child: Image.asset(
      'assets/images/fy/sem1/paper1/fySem1P1C16.png',
      fit: BoxFit.cover,
      width: 200,
    ));
  }

  Widget getSeventeenFormula(String formlulaNo) {
    return Wrap(
      alignment: WrapAlignment.center,
      // crossAxisAlignment: WrapCrossAlignment.center,
      direction: Axis.horizontal,
      children: <Widget>[
        Text(formlulaNo,
        style: GoogleFonts.montserrat(
                textStyle: const TextStyle(fontSize: 11),
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 43, 44, 44))),
        Container(
          child: Image.asset(
        'assets/images/fy/sem1/paper1/fySem1P1C17.png',
        fit: BoxFit.cover,
        width: 250,
      ))
      ],
    );
  }
  
}
