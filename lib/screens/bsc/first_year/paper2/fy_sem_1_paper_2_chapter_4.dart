import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:google_fonts/google_fonts.dart';

class FYSem1Paper2Chapter4 extends StatefulWidget {
  @override
  State<FYSem1Paper2Chapter4> createState() => _FYSem1Paper2Chapter4();
}

class _FYSem1Paper2Chapter4 extends State<FYSem1Paper2Chapter4> {
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
            // getFourthFormula(),
            getFifthIndex("5."),
            getFifthFormula()
            
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
        TeXViewDocument(r"""<p>P(x) is a Probability Mass Function (pmf) of a discrete random variable x is</p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.center,
            fontStyle: TeXViewFontStyle(fontSize: 10),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${p(x) \geq 0 \land {\sum p(x) = 1_{x'}}}$$</p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10),
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
        TeXViewDocument(r"""<p>$${F(x)=P(X \leq x) &nbsp; &nbsp; &nbsp; -\infin \leq x \leq \infin}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10),
          )
        ),
        TeXViewDocument(r"""<p>$${F(-\infin) = 0 \land F(\infin) = 1}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10),
          )
        ),
        TeXViewDocument(r"""<p>$${P(a < X \leq b) = F(b)-F(a)}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10),
          )
        ),
        TeXViewDocument(r"""<p>$${P(X>a) = 1-F(a)}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10),
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
        TeXViewDocument(r"""<p>M is Median of a discrete probability distribution if </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.center,
            fontStyle: TeXViewFontStyle(fontSize: 10),
          )
        ),
        TeXViewDocument(r"""<p>$${P(X \leq M) \geq {1 \over 2} \land P(X \geq M) \geq {1 \over 2}}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10),
          )
        ),
      ]);
  }

  getFourthFormula() {
    return TeXViewColumn(
      style: const TeXViewStyle(
        margin: TeXViewMargin.only(bottom: 10)
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>Events A, B, and C are pairwise independent if Conditions (i), (ii), and (iii) of the above are satisfied but not the condition (iv).</p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10),
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
        TeXViewDocument(r"""<p>If Y = g(x) is real valued function of X, then </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.center,
            fontStyle: TeXViewFontStyle(fontSize: 10),
          )
        ),
        TeXViewDocument(r"""<p>$${P(Y_i) = P(Y_i)}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10),
          )
        ),

      ]));
  }

  getFistIndex(String index) {
    return TeXViewContainer(
      // style: TeXViewStyle(backgroundColor: Colors.yellow),
      child: TeXViewDocument(r"""<p>1.</p>""",
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
      child: TeXViewDocument(r"""<p>2. Cumulative Distribution Function (CDF)</p>""",
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
      child: TeXViewDocument(r"""<p>3. Median</p>""",
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
        margin: TeXViewMargin.only(bottom: 10)
      ),
      child: TeXViewDocument(r"""<p>4. Mode of a probability distribution is the value of X for which p.m.f. is maximum.</p>""",
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
  
}
