import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:google_fonts/google_fonts.dart';

class FYSem1Paper2Chapter2 extends StatefulWidget {
  @override
  State<FYSem1Paper2Chapter2> createState() => _FYSem1Paper2Chapter2();
}

class _FYSem1Paper2Chapter2 extends State<FYSem1Paper2Chapter2> {
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
            // getThirdFormula(),
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
            getThirteenIndex("10."),
            getThirteenFormula()
            
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
        TeXViewDocument(r"""<p>$$ {m_{c_n} = {m! \over n!(m-n)!}} $$ </p>""",
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
        TeXViewDocument(r"""<p>$$ {m_{p_n} = {m! \over (m-n)!}} $$ </p>""",
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
        TeXViewDocument(r"""<p>$${P(A) = {Number &nbsp; of &nbsp; elements &nbsp; belonging &nbsp; to &nbsp; A \over Total &nbsp; number &nbsp; of &nbsp; elements &nbsp; in &nbsp; sample &nbsp; space &nbsp; \Omega}}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${0 \leq P(A) \leq 1}$$ </p>""",
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
        TeXViewDocument(r"""<p>$${P(\varphi) = 0, &nbsp; P(\Omega) = 1}$$ </p>""",
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
        TeXViewDocument(r"""<p>$${If &nbsp; A_1 , A_2 , … , A_n &nbsp; are &nbsp; mutually &nbsp; exclusive &nbsp; events, &nbsp; then &nbsp; P(\cup {\substack{n\\i=1}} A_i) = ∑ {\substack{n\\i=1}}P(A_i)}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 9, fontWeight: TeXViewFontWeight.bold),
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
        TeXViewDocument(r"""<p>$${P(A') = 1-P(A)}$$</p>""",
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
        TeXViewDocument(r"""<p>$${P(A \cup B) = P(A)+P(B)-P(A \cap B)}$$</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 9, fontWeight: TeXViewFontWeight.bold),
          )
        ),
        TeXViewDocument(r"""<p>$${P(A \cup B \cup C) = P(A)+P(B)+P(C)-P(A \cap B)-P(B \cap C)-P(A \cap C) + P(A \cap B \cap C)}$$</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 8, fontWeight: TeXViewFontWeight.bold),
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
        TeXViewDocument(r"""<p>$${P(A \cup B) = P(A \cap B') + P(A \cap B) + P(A' \cap B)}$$</p>""",
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
        TeXViewDocument(r"""<p>$${P(A \cup B) \leq P(A)+P(B), &nbsp; Generally &nbsp; P(\cup {\substack{n\\i=1}} A_i) \leq ∑ {\substack{n\\i=1}}P(A_i)}$$ </p>""",
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
        TeXViewDocument(r"""<p>$${P(\cap {\substack{n\\i=1}} A_i) \geq ∑ {\substack{n\\i=1}}P(A_i)-(n-1)}$$ </p>""",
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
        TeXViewDocument(r"""<p>$${max \{P(A), P(B)\} \leq P(A \cup B) \leq min \{P(A)+P(B), 1 \}}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
      ]);
  }

  getThirteenFormula() {
     return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$${P(A' \cap B) = P(B)-P(A \cap B)}$$ </p>""",
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
      child: TeXViewDocument(r"""<p>1. Number of ways to choose n objects from m objects</p>""",
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
      child: TeXViewDocument(r"""<p>2. Number of ways to arrange n objects from m objects</p>""",
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
      child: TeXViewDocument(r"""<p>3. Number of ways n objects can be arranged in between themselves = n!</p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }

  getFourthIndex(String index) {
    return TeXViewContainer(
      style: const TeXViewStyle(
        margin: TeXViewMargin.only(top: 20)
      ),
      child: TeXViewDocument(r"""<p>4. Probability of an event A</p>""",
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
      child: TeXViewDocument(r"""<p>5.</p>""",
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
      child: TeXViewDocument(r"""<p>6.</p>""",
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
      child: TeXViewDocument(r"""<p>7.</p>""",
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
      child: TeXViewDocument(r"""<p>8. Theorem of total probability (Addition theorem)</p>""",
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
      child: TeXViewDocument(r"""<p>9. Occurrence of all events</p>""",
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
      child: TeXViewDocument(r"""<p>10. Boole’s inequality</p>""",
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
      child: TeXViewDocument(r"""<p>11.</p>""",
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
      child: TeXViewDocument(r"""<p>12.</p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }

  getThirteenIndex(String index) {
    return TeXViewContainer(
      // style: TeXViewStyle(backgroundColor: Colors.yellow),
      child: TeXViewDocument(r"""<p>13.</p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }
  
}
