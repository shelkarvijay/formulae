import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:google_fonts/google_fonts.dart';

class FYSem2Paper2Chapter4 extends StatefulWidget {
  @override
  State<FYSem2Paper2Chapter4> createState() => _FYSem2Paper2Chapter4();
}

class _FYSem2Paper2Chapter4 extends State<FYSem2Paper2Chapter4> {
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
              getHeading1(),
              getFistIndex("1."),
              getFirstFormula(),
              getSecondIndex("2."),
              getSecondFormula(),
              getThirdIndex("3."),
              getThirdFormula(),
              getHeading2(),
              getFistIndex("1."),
              getFirstFormulaVar(),
              getSecondIndex("2."),
              getSecondFormulaVar(),
              getThirdIndex("3."),
              getThirdFormulaVar(),
              getHeading3(),
              getFourthIndex("4."),
              getFourthFormula(),
              getFifthIndex("5."),
              getFifthFormula(),
              getSixthIndex("6."),
              getSixthFormula(),
              getSeventhIndex("7."),
              getSeventhFormula(),
              getHeading4(),
              getEightIndex("8."),
              getEightFormula(),
              getHeading5(),
              getNineIndex("9."),
              getNineFormula(),
              getTenIndex("10."),
              getTenFormula(),
              getHeading6(),
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
              r"""<p>$${E[g(X,Y)]=\displaystyle\sum_{i=1}^m \displaystyle\sum_{j=1}^n g(x_i, y_i)p_{ij}}$$</p>""",
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
          TeXViewDocument(r"""<p>$${E(aX+bY+c) = aE(X)+bE(Y)+c}$$</p>""",
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
              r"""<p>$${E(X.Y)=E(X).E(Y); &nbsp; if &nbsp; X &nbsp; and &nbsp; Y &nbsp; are &nbsp; independent.}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getFirstFormulaVar() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${Var(aX+bY) = a^2 Var(X)+b^2 Var(Y)+2abCov(X,Y)}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getSecondFormulaVar() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${Var(aX-bY) = a^2 Var(X)+b^2 Var(Y)-2abCov(X,Y)}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getThirdFormulaVar() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${Var(\displaystyle\sum_{i=1}^n a_i X_i)=\displaystyle\sum_{i=1}^n a_i ^2 \sigma_i ^2 + 2\displaystyle\sum_{\binom{i=1}{i \lt j}}^n \displaystyle\sum_{j=1}^n a_i a_j Cov(X_i, X_j) }$$</p>""",
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
              r"""<p>$${Cov(X,Y)=E[[X-E(X)][Y-E(Y)]]=E(XY)-E(X).E(Y)}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
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
              r"""<p>$${Cov(X,Y)=0; &nbsp;If &nbsp; X &nbsp; and &nbsp; Y &nbsp; are &nbsp; independent.}$$ </p>""",
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
          TeXViewDocument(r"""<p>$${Cov(aX+b, cY+d)=acCov(X,Y)}$$ </p>""",
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
          TeXViewDocument(r"""<p>$${Cov(X,X) = Var(X)}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
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
          TeXViewDocument(r"""<p>$${Pending....}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
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
              r"""<p>$${Conditional &nbsp; expectation &nbsp; of &nbsp; X &nbsp; given &nbsp; Y=y_j}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>$${E(X \mid Y=y_j)=\displaystyle\sum_{i=1}^m x_i {p_{ij} \over p_{.j}}}$$ </p>""",
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
              r"""<p>$${Conditional &nbsp; expectation &nbsp; of &nbsp; Y &nbsp; given &nbsp; X=X_j}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>$${E(Y \mid X=x_j)=\displaystyle\sum_{j=1}^n y_i {p_{ij} \over p_{i.}}}$$ </p>""",
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
              r"""<p>$${Conditional &nbsp; variance &nbsp; of &nbsp; X &nbsp; given &nbsp; Y=y_j}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>$${Var(X \mid Y=y_j) = E(X^2 \mid Y=y_j)-[E(X \mid Y=y_j)]^2}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>$${E(X^2 \mid Y = y_j)=\displaystyle\sum_{i=1}^m x_i ^2 {p_{ij} \over p_{.j}}}$$ </p>""",
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
              r"""<p>$${Conditional &nbsp; variance &nbsp; of &nbsp; Y &nbsp; given &nbsp; X=x_i}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>$${Var(Y \mid X=x_i) = E(Y^2 \mid X=x_i)-[E(Y \mid X=x_i)]^2}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>$${E(Y^2 \mid X = x_i)=\displaystyle\sum_{j=1}^n y_j ^2 {p_{ij} \over p_{i.}}}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
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
          TeXViewDocument(r"""<p>$${\mu_{rs}' = E(X^r Y^s)=\displaystyle\sum_{i=1}^m \displaystyle\sum_{j=1}^n x_i ^r y_j ^s p_{ij}}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${\mu_{10}' = E(X)}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${\mu_{20}' = E(X^2)}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${\mu_{02}' = E(Y^2)}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${\mu_{11}' = E(XY)}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
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
          TeXViewDocument(r"""<p>$${\mu_{rs} = E[[X-E(X)]^r [Y-E(Y)]^s]}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${\mu_{10} = \mu_{01} = 0}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${\mu_{20} = Va(X)}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${\mu_{02} = Var(Y)}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${\mu_{11} = Cov(X,Y)}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${\rho = {\mu_{11} \over \sqrt{\mu_{20} \mu_{02}}}}$$ </p>""",
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
          TeXViewDocument(r"""<p>$${Var(\displaystyle\sum_{i=1}^n x_i) = n \sigma ^2 [1+(n-1)\rho]}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]);
  }

  getSeventhFormulae() {
    return TeXViewColumn(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(r"""<p>$${Pending....}$$ </p>""",
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
                fontStyle: TeXViewFontStyle(fontSize: 10),
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
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getThirdIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>3.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
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
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getFifthIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>5.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getSixthIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>6.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getSeventhIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>7.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10),
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
                fontStyle: TeXViewFontStyle(
                    fontSize: 10),
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
                fontStyle: TeXViewFontStyle(
                    fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getTenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>10.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10),
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
                fontStyle: TeXViewFontStyle(
                    fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getTweleIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>12.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getThirteenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>13. Raw Moments:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getFourteenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>14. Central Moments:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getFifteenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>15.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getHeading1() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>Expectation</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getHeading2() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>Variance</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getHeading3() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>Covariance</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getHeading4() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>Correlation</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getHeading5() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>Conditional Expectation</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getHeading6() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>Conditional variance</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }
}
