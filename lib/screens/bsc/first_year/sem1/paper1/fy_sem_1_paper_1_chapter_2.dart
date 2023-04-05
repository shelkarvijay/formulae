import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:google_fonts/google_fonts.dart';

class FYSem1Paper1Chapter2 extends StatefulWidget {
  @override
  State<FYSem1Paper1Chapter2> createState() => _FYSem1Paper1Chapter2();
}

class _FYSem1Paper1Chapter2 extends State<FYSem1Paper1Chapter2> {
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
              getSeventeenIndex("17"),
              getSeventeenFormula(),
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
              r"""<p>$${X \bar = {\displaystyle\sum &nbsp; of &nbsp; observations \over Number &nbsp; of &nbsp; observation} = {\displaystyle\sum_{i=1}^n X_i \over n} for &nbsp; individual &nbsp; observations.}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
          TeXViewDocument(
              r"""<p>$${{\displaystyle\sum_{i=1}^n X_i f_i \over \displaystyle\sum_{i=1}^n f_i } &nbsp; for &nbsp; frequency &nbsp; distribution.}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getSecondFormula() {
    return TeXViewContainer(
      style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)
          // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
          ),
      child: TeXViewDocument(
          r"""<p>\(\varpropto \% \) trimmed mean of a dataset is an arithmetic mean of observations after ignoring \(\varpropto \% \) lowest and \(\varpropto \% \) highest observations from the dataset.</p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10),
          )),
    );
  }

  getThirdFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${\bar X_c = {n_1 \bar X_1 + n_2 \bar X_2 \over n_1 + n_2}}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>\(\bar X_c\) : Combined mean of two groups.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>\(n_1\) : Number of observations in first group. </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>\(n_2\) : Number of observations in second group.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>\(\bar X_1\) : Mean of first group. </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>\(\bar X_2\) : Mean of second group. </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
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
              r"""<p>$${M_d = \bigg( {n+1 \over 2} \bigg)^{th} &nbsp; observation &nbsp; if &nbsp; n &nbsp; is &nbsp; odd.}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>$${{= \bigg( {n \over 2} \bigg)^{th} obs + \bigg( {n \over 2} + 1 \bigg)^{th} obs \over 2} &nbsp; if &nbsp; is&nbsp; even.}$$ </p>""",
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
              r"""<p>$${M_d = I + \bigg[ {{N \over 2} - c.f. \over f} \bigg].h }$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>\(M_d\) : Median of a dataset.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>\(N\) : Total frequency. </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>\(I\) : Lower boundary of a Median class.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>\(c.f.\) : Less than type cumulative frequency of a class just 
                preceding to the Median class.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>\(f\) : Frequency of a Median class. </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>\(h\) : Class width.</p>""",
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
              r"""<p>$${M_o = I + \bigg[ {f_m - f_1 \over 2f_m - f_1 - f_2} \bigg].h }$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>\(M_d\) : Mode of a dataset.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>\(I\) : Lower boundary of a Modal class. </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>\(f_m\) : Frequency of a Modal class.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>\(f_m\) : Frequency of a Pre-Modal class.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>\(f_m\) : Frequency of a Post-Modal class.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>\(h\) : Class width.</p>""",
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
          TeXViewDocument(r"""<p>Geometric mean of observations \( X_1, X_2,.... X_n\) is G = \( \Big(X_1, X_2,....X_n \Big)^{1 \over n} \)</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>Also G = Antilog</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>Geometric mean for frequency distribution is G = Antilog</p>""",
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
          TeXViewDocument(
              r"""<p>$${H.M. = {n \over \displaystyle\sum_{i=1}^n \bigg( {1 \over X_i}\bigg)} for &nbsp; individual &nbsp; observations.}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>$${{n \over \displaystyle\sum_{i=1}^n \bigg( {1 \over X_i}\bigg)} for &nbsp; frequency &nbsp; distribution.}$$ </p>""",
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
              r"""<p>$${G.M. = \sqrt{(A.M.)(H.M.)}}$$ </p>""",
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
          TeXViewDocument(r"""<p>$${\bar X_w = {\displaystyle\sum_{i=1}^n w_i x_i \over \displaystyle\sum_{i=1}^n w_i }}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>$${x_i : i^{th} &nbsp; observation., &nbsp; w_i : Weight &nbsp; of &nbsp; i^{th} &nbsp; observation.}$$ </p>""",
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
          TeXViewDocument(r"""<p>$${G_w = {\displaystyle\sum_{i=1}^n w_i log(x_i) \over \displaystyle\sum_{i=1}^n w_i }}$$ </p>""",
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
          TeXViewDocument(r"""<p>$${H_w = {\displaystyle\sum_{i=1}^n n_i \over \displaystyle\sum_{i=1}^n \bigg({w_i \over x_i} \bigg) }}$$ </p>""",
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
              r"""<p>$${Q_i = l + \Bigg[ {\bigg( {? \over 4}\bigg) - c.f. \over f }\Bigg]h, &nbsp; &nbsp; &nbsp; &nbsp; i=1,2,3.}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>\(Q_i\) : \(i^th\) quartile.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>\(l\) : lower boundary of \(i^th\) quartile class.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>N : Total frequency.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
              r"""<p>\(f\) : Frequency of \(i^th\) quartile class.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>c.f. : Less than type cumulative frequency of a class
              just preceding to the \(i^th\) quartile class.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>\(h\) : Class width.</p>""",
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
          TeXViewDocument(
              r"""<p>$${D_i = l + \Bigg[ {\bigg( {? \over 10}\bigg) - c.f. \over f }\Bigg]h, &nbsp; &nbsp; &nbsp; &nbsp; i=1,2,3,4,5,6,7,8,9.}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.right,
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
              r"""<p>$${P_i = l + \Bigg[ {\bigg( {? \over 100}\bigg) - c.f. \over f }\Bigg]h, &nbsp; &nbsp; &nbsp; &nbsp; i=1,2,3,...,99.}$$ </p>""",
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
          TeXViewDocument(r"""<p>$${Q_2=D_5=P_{50}}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${D_1=P_{10}, D_2=P_{20},....,D_9=P_{90},}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${Q_1=P_{25}, Q_2=P_{50},....,Q_9=P_{75}}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]);
  }

  getSeventeenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(r"""<p>$${If &nbsp; Y=aX+b, &nbsp; then &nbsp; \bar Y = a\bar X +b,}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(r"""<p>$${If &nbsp; Y={X-c \over d}, &nbsp; then &nbsp; \bar Y={\bar X-c \over d}}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]);
  }

  getFistIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>1. Arithmetic Mean (A.M.) :</p>""",
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
        child: TeXViewDocument(r"""<p>2.</p>""",
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
        child: TeXViewDocument(r"""<p>3. Combined mean: </p>""",
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
            r"""<p>4. Median for individual observations:</p>""",
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
            r"""<p>5. Median for frequency distribution:</p>""",
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
            r"""<p>6. Mode for frequency distribution:</p>""",
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
        child: TeXViewDocument(r"""<p>7. Geometric Mean (G.M.):</p>""",
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
        child: TeXViewDocument(r"""<p>8. Harmonic Mean (H.M.):</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getNineIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>9.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getTenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>10. Weighted Arithmetic Mean:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getElevenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>11. Weighted Geometric Mean:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getTweleIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>12. Weighted Harmonic Mean:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getThirteenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>13. Quartiles:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getFourteenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>14. Deciles:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getFifteenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>15. Percentiles:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getSixteenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(
            r"""<p>16. Relations between partition values:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getSeventeenIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>17.</p>""",
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
            r"""<p>\( \bullet \) Another form of Geometric Distribution:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }
}
