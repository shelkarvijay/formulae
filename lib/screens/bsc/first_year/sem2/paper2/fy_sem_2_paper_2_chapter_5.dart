import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:google_fonts/google_fonts.dart';

class FYSem2Paper2Chapter5 extends StatefulWidget {
  @override
  State<FYSem2Paper2Chapter5> createState() => _FYSem2Paper2Chapter5();
}

class _FYSem2Paper2Chapter5 extends State<FYSem2Paper2Chapter5> {
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
            style: const TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                padding: TeXViewPadding.all(0)),
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
              getTweleIndex("12."),
              getTweleFormula(),
              getThirteenIndex("13."),
              getThirteenFormula(),
              getFourteenIndex("14."),
              getFourteenFormula(),
              getFifteenIndex("15."),
              getFifteenFormula(),
              getSixteenIndex("16"),
              getSixteenFormula(),
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
          TeXViewDocument(
              r"""<p>$${e^m=1+m+{m^2 \over 2!}+{m^3 \over 3!}+...}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getSecondFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${e^{-m}=1-m+{m^2 \over 2!}-{m^3 \over 3!}+...}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getThirdFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${log(1+a) = a-{a^2 \over 2} + {a^3 \over 3}-{a^4 \over 4}+...}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getFourthFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${log(1-a) = -[a+{a^2 \over 2} + {a^3 \over 3}+{a^4 \over 4}+...]}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
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
          TeXViewDocument(
              r"""<p>$${(x+y)^n = \displaystyle\sum_{r=0}^n \binom{n}{r} x^{n-r} y^r}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>$${\displaystyle\sum_{r=0}^n \binom{n}{r} 2^n}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]));
  }

  getSixthFormula() {
    return TeXViewContainer(
        child: TeXViewColumn(
            style: const TeXViewStyle(
              textAlign: TeXViewTextAlign.left,
              padding: TeXViewPadding.all(0),
              // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
            children: [
          TeXViewDocument(r"""<p>$${1+2+3+.....+n = {n(n+1) \over 2}}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]));
  }

  getSeventhFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(r"""<p>$${1^2+2^2+3^2+.....+n^2 = {n(n+1)(2n+1) \over 6}}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]);
  }

  getEightFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(r"""<p>$${1^3+2^3+3^3+.....+n^3 = {n^2(n+1)^2 \over 4}}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]);
  }

  getNineFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${(a_1 + a_2 +....+ a_n)^2 = \displaystyle\sum_{i=1}^n a_1 ^2 +2 \displaystyle\sum_{i \lt j} \displaystyle\sum Pending...}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]);
  }

  getTenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${1+x+x^2+x^3+...={1 \over 1-x} &nbsp; if \mid x \mid \lt 1}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]);
  }

  getElevenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${1-x+x^2-x^3+...={1 \over 1+x} &nbsp; if \mid x \mid \lt 1}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]);
  }

  getTweleFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${1+2x+3x^2+4x^3+...={1 \over (1-x)^2} &nbsp; if \mid x \mid \lt 1}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]);
  }

  getThirteenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${1-2x+3x^2-4x^3+...={1 \over (1+x)^2} &nbsp; if \mid x \mid \lt 1}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]);
  }

  getFourteenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${(1+x)^{-n} = 1+(-n)x+{(-n)(-n+1) \over 2!}x^2 + {(-n)(-n-1)(-n-2) \over 3!} x^3 + ....Pending...}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]);
  }

  getFifteenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${1+{1 \over 2^2}+{1 \over 3^2} + {1 \over 4^2}+ ... = {\pi^2 \over 6}}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]);
  }

  getSixteenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${\log_{10}e=0.434394, \log_e 10= Pending...}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]);
  }

  getFistIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>1. </p>""",
            style: TeXViewStyle(
                padding: const TeXViewPadding.only(top: 10),
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
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
                elevation: 11)));
  }

  getThirdIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>3.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getFourthIndex(String index) {
    return TeXViewContainer(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)),
        child: TeXViewDocument(r"""<p>4.</p>""",
            style: TeXViewStyle(
                padding: const TeXViewPadding.only(top: 10),
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getFifthIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>5. Binomial Theorem: </p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getSixthIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>6.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getSeventhIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>7.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getEightIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>8.</p>""",
            style: TeXViewStyle(
                padding: const TeXViewPadding.only(top: 10),
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getNineIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>9.</p>""",
            style: TeXViewStyle(
                padding: const TeXViewPadding.only(top: 10),
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getTenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>10.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getElevenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>11.</p>""",
            style: TeXViewStyle(
                padding: const TeXViewPadding.only(top: 10),
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getTweleIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>12.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getThirteenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>13.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getFourteenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>14. Binomial Series</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getFifteenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>15.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getSixteenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>16.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }
}
