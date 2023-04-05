import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:google_fonts/google_fonts.dart';

class FYSem1Paper2Chapter1 extends StatefulWidget {
  @override
  State<FYSem1Paper2Chapter1> createState() => _FYSem1Paper2Chapter1();
}

class _FYSem1Paper2Chapter1 extends State<FYSem1Paper2Chapter1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.2,
      padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: TeXView(
        // fonts: const[
        //         TeXViewFont(fontFamily: 'Montserrat-Regular', src: 'fonts/Montserrat-Regular.ttf'),
        //       ],
        style: const TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          padding: TeXViewPadding.all(0),
          elevation: 10),
        child: TeXViewColumn(
          style: const TeXViewStyle(textAlign: TeXViewTextAlign.left, padding: TeXViewPadding.all(0)),
          children: [
            getFistIndex("1."),
            getFirstFormula(),
            getSecondIndex("2."),
            getSecondFormula(),
            getThirdIndex("3."),
            getThirdFormula(),
            getFourthIndex("4."),
            getFourthFormula(),
            getFifthIndex("5."),
            getFifthFormula(),
            getSixthIndex("6."),
            getSixthFormula(),
            getSeventhIndex("7."),
            getSeventhFormula(),
            getEightIndex("8."),
            getEightFormula(),
            getNineIndex("9."),
            getNineFormula(),
            getTenIndex("10."),
            getTenFormula(),
            getElevenIndex("11."),
            getElevenFormula(),
            getTweleIndex("10."),
            getTweleFormula(),
            
          ]),
      ),
    );
  }

  getFirstFormula() {
    return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$$ {A' \lor A^c = \Omega - A} $$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$$ {(A')' = A, \Omega ' = \varphi, \varphi ' = \Omega} $$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
      ]);
  }

  getSecondFormula() {
    return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$$ {A \cup B = B \cup A, &nbsp; A \cup \varphi = A, &nbsp; A \cup \Omega = \Omega, &nbsp; A \cup A = \Omega, A \cup A = A} $$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
      ]);
  }

  getThirdFormula() {
    return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$$ {A \cap B = B \cap A, &nbsp; A \cap \varphi = \varphi, &nbsp; A \cap \Omega = A, &nbsp; A \cap A = \varphi, A \cap A = A} $$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
      ]);
  }

  getFourthFormula() {
    return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$${(A \cup B)' = A' \cap B'}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${(A \cap B)' = A' \cup B'}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
      ]);
  }

  getFifthFormula() {
     return TeXViewContainer(
      child: TeXViewColumn(
      style: const TeXViewStyle(
        textAlign: TeXViewTextAlign.left,
        padding: TeXViewPadding.all(0),
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$${A \cap B = \varphi}$$ </p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),

      ]));
  }

  getSixthFormula() {
     return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$${A \cup B} = \Omega$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
      ]);
  }

  getSeventhFormula() {
     return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$${A &nbsp; and &nbsp; B &nbsp; are &nbsp; partition &nbsp; of &nbsp; \Omega &nbsp; if &nbsp; A \cap B = \varphi &nbsp; and &nbsp; A \cup B = \Omega}$$</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
      ]);
  }

  getEightFormula() {
     return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$${A \cup B}$$</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          )
        ),
      ]);
  }

  getNineFormula() {
     return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$${A \cap B}$$</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          )
        ),
      ]);;
  }

  getTenFormula() {
     return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$${(A \cup B)' = A' \cap B'}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
      ]);
  }

  getElevenFormula() {
     return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$${A' \cap B}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
      ]);
  }

  getTweleFormula() {
     return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$${(A \cap B') \cup (A' \cap B)}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
      ]);
  }

  getFistIndex(String index) {
    return TeXViewContainer(
      // style: TeXViewStyle(backgroundColor: Colors.yellow),
      child: TeXViewDocument(r"""<p>1. Complement of an event A</p>""",
        style: TeXViewStyle(
          padding: TeXViewPadding.only(top: 10),
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }

  getSecondIndex(String index) {
    return TeXViewContainer(
      style: const TeXViewStyle(
        // margin: TeXViewMargin.only(top: 30)
      ),
      child: TeXViewDocument(r"""<p>2.</p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }

  getThirdIndex(String index) {
    return TeXViewContainer(
      // style: TeXViewStyle(backgroundColor: Colors.yellow),
      child: TeXViewDocument(r"""<p>3.</p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }

  getFourthIndex(String index) {
    return TeXViewContainer(
      // style: TeXViewStyle(backgroundColor: Colors.yellow),
      child: TeXViewDocument(r"""<p>4. De Morgan’s laws</p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }

  getFifthIndex(String index) {
    return TeXViewContainer(
      // style: TeXViewStyle(backgroundColor: Colors.yellow),
      child: TeXViewDocument(r"""<p>5. Mutually Exclusive events</p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }

  getSixthIndex(String index) {
    return TeXViewContainer(
      // style: TeXViewStyle(backgroundColor: Colors.yellow),
      child: TeXViewDocument(r"""<p>6. Exhaustive events</p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }

  getSeventhIndex(String index) {
    return TeXViewContainer(
      // style: TeXViewStyle(backgroundColor: Colors.yellow),
      child: TeXViewDocument(r"""<p>7. Partition of Ω</p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }

  getEightIndex(String index) {
    return TeXViewContainer(
      // style: TeXViewStyle(backgroundColor: Colors.yellow),
      child: TeXViewDocument(r"""<p>8. Occurrence of at least one event</p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }

  getNineIndex(String index) {
    return TeXViewContainer(
      // style: TeXViewStyle(backgroundColor: Colors.yellow),
      child: TeXViewDocument(r"""<p>9. Occurrence of all events:</p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }

  getTenIndex(String index) {
    return TeXViewContainer(
      // style: TeXViewStyle(backgroundColor: Colors.yellow),
      child: TeXViewDocument(r"""<p>10. Occurrence of none of the events</p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }

  getElevenIndex(String index) {
    return TeXViewContainer(
      // style: TeXViewStyle(backgroundColor: Colors.yellow),
      child: TeXViewDocument(r"""<p>11. Relative complement of event A with respect to event B</p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }

  getTweleIndex(String index) {
    return TeXViewContainer(
      // style: TeXViewStyle(backgroundColor: Colors.yellow),
      child: TeXViewDocument(r"""<p>12. Exactly one event occurs</p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }
  
}
