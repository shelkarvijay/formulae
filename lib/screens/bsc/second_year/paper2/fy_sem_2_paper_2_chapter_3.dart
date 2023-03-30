import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:google_fonts/google_fonts.dart';

class FYSem2Paper2Chapter3 extends StatefulWidget {
  @override
  State<FYSem2Paper2Chapter3> createState() => _FYSem2Paper2Chapter3();
}

class _FYSem2Paper2Chapter3 extends State<FYSem2Paper2Chapter3> {
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
              getHeading1(),
              getSeventhFormulae()
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
              r"""<p>$${p_{ij} = P[X=x_i, Y=y_i];i=1,2,...,m; j=1,2,...,n}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
          TeXViewDocument(
              r"""<p>$${p_{ij} \geq 0 \land \displaystyle\sum_{i=1}^m \displaystyle\sum_{j=1}^n p_{ij} = 1}$$</p>""",
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
              r"""<p>$${p_{i.} = P(X=x_i)=\displaystyle\sum_{j=1}^n p_{ij}; i=1,2,...,m}$$</p>""",
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
              r"""<p>$${p_{.j} = P(Y=y_j)=\displaystyle\sum_{i=1}^m p_{ij}; j=1,2,...,n}$$</p>""",
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
              r"""<p>$${p_{ij} = p_i.p_j ; i=1,2,...,m;j=1,2,...,n}$$ </p>""",
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
              r"""<p>$${p_(X=x_i \mid Y=y_j)={p_{ij} \over P_{.j}}}$$ </p>""",
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
          TeXViewDocument(
              r"""<p>$${p_(Y=y_i \mid X=x_j)={p_{ij} \over P_{i.}}}$$ </p>""",
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
          TeXViewDocument(
              r"""<p>$${F(x,y)=p[X \leq x, Y \leq y]; x,y \in R}$$ </p>""",
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
          TeXViewDocument(r"""<p>$${i. 0 \leq F(x,y) \leq 1}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${ii. \lim\limits_{\binom{x \to -infinity}{y \to -infinity}} F(x,y) = 0}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${iii. \lim\limits_{\binom{x \to infinity}{y \to infinity}} F(x,y) = 1}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${iv. P[a \lt X \leq b, c \lt Y \leq d,]=F(b,d)+F(a,c)-F(b,c)-F(a,d)}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${v. \lim\limits_{y \to infinity} F(x,y) = F(x)}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${vi. \lim\limits_{x \to infinity} F(x,y) = F(y)}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]);
  }

  getFistIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(
            r"""<p>1. Joint Probability Distribution: </p>""",
            style: TeXViewStyle(
                padding: TeXViewPadding.only(top: 10),
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getSecondIndex(String index) {
    return TeXViewContainer(
        style: const TeXViewStyle(
            // margin: TeXViewMargin.only(top: 30)
            ),
        child: TeXViewDocument(
            r"""<p>2. Marginal Probability Distribution of X:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getThirdIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(
            r"""<p>3. Marginal Probability Distribution of Y:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getFourthIndex(String index) {
    return TeXViewContainer(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)),
        child: TeXViewDocument(
            r"""<p>4. X and Y are called independent random variables if,</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getFifthIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(
            r"""<p>5. Conditional Probability Distribution of X given Y:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getSixthIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(
            r"""<p>6. Conditional Probability Distribution of Y given X:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getSeventhIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(
            r"""<p>7. Joint Distribution Function of Two-Dimensional Random Variable:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getEightIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>8. Cumulants:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getHeading1() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(
            r"""<p>\( \bullet \) Properties of Distribution Function</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }
}
