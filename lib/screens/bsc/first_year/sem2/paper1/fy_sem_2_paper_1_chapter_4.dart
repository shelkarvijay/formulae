import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:google_fonts/google_fonts.dart';

class FYSem2Paper1Chapter4 extends StatefulWidget {
  @override
  State<FYSem2Paper1Chapter4> createState() => _FYSem2Paper1Chapter4();
}

class _FYSem2Paper1Chapter4 extends State<FYSem2Paper1Chapter4> {
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
              getSubHeading1(),
              getFirstFormula(),
              // getSecondIndex("2."),
              getSecondFormula(),
              getSubHeading2(),
              // getThirdIndex("3."),
              getThirdFormula(),
              // getFourthIndex("4."),
              getFourthFormula(),
              // getFifthIndex("5."),
              getFifthFormula(),
              getHeading2(),
              // getSixthIndex("6."),
              getSixthFormula(),
              // getSeventhIndex("7."),
              getSeventhFormula(),
              // getEightIndex("8."),
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
              getSubHeading3(),
              getSubHeading4(),

              // getFifteenIndex("14."),
              getFifteenFormula(),
              getSubHeading5(),
              getSixteenFormula(),
              getSeventeenIndex(),
              getSeventeenFormula(),
              getEighteenIndex(),
              getEighteenFormula(),
              getNineteenIndex(),
              getNineteenFormula(),

              getTwentyIndex(),
              getTwentyFourmula(),
              getTwentyOneIndex(),
              getTwentyOneFormula(),
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
              r"""<p>$${1. &nbsp; Price &nbsp; Index &nbsp; Number = P_{01} = {\displaystyle\sum p_1 \over \displaystyle \sum p_0} \times 100}$$</p>""",
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
              r"""<p>$${2. &nbsp; Quantity &nbsp; Index &nbsp; Number = Q_{01} = {\displaystyle\sum q_1 \over \displaystyle \sum q_0} \times 100}$$</p>""",
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
              r"""<p>$${3. &nbsp; Price &nbsp; Index &nbsp; Number = p_{01} = {{\displaystyle \sum p_1 \over \displaystyle \sum p_0} \over n} \times 100}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
          TeXViewDocument(
              r"""<p>Where \( {p_1 \over p_0} \) is price relative and n is the number of commodities.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
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
              r"""<p>$${4. &nbsp; Price &nbsp; Index &nbsp; Number &nbsp; Using &nbsp; Geometric &nbsp; Mean}$$</p>""",
              style: TeXViewStyle(
                padding: const TeXViewPadding.only(top: 15),
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
          TeXViewDocument(
              r"""<p>$${P_{01} = [\prod ({p_1 \over p_0} \times 100)]^{1 \over n} = Antilog[{1 \over n}\sum log[({p_1 \over p_0}) \times 100]]}$$</p>""",
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
              // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
            children: [
              TeXViewDocument(
                  r"""<p>5. &nbsp; Quantity &nbsp; Index &nbsp; Number &nbsp; Using &nbsp; Geometric &nbsp; Mean</p>""",
                  style: TeXViewStyle(
                    padding: const TeXViewPadding.only(top: 15),
                    textAlign: TeXViewTextAlign.center,
                    fontStyle: TeXViewFontStyle(fontSize: 10),
                    // contentColor: const Color.fromARGB(255, 221, 215, 215),
                    // elevation: 11
                  )),
              TeXViewDocument(
                  r"""<p>$${Q_{01} = [\prod ({q_1 \over q_0} \times 100)]^{1 \over n} = Antilog[{1 \over n}\sum log[({q \over q_0}) \times 100]]}$$</p>""",
                  style: TeXViewStyle(
                    textAlign: TeXViewTextAlign.left,
                    fontStyle: TeXViewFontStyle(fontSize: 10),
                    // contentColor: const Color.fromARGB(255, 221, 215, 215),
                    // elevation: 11
                  )),
        ]));
  }

  getSixthFormula() {
    return TeXViewContainer(
        child: TeXViewColumn(
            style: const TeXViewStyle(
              textAlign: TeXViewTextAlign.left,
              // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
            children: [
          TeXViewDocument(
              r"""<p>$${6. &nbsp;Price &nbsp; Index &nbsp; Number = P_{01} = {{\displaystyle \sum p_1 \over \displaystyle \sum p_0} w \over \displaystyle \sum w} \times 100}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
          TeXViewDocument(
                  r"""<p>w is the weight assigned to the commodity having price relative \( {p_1 \over p_0} \)</p>""",
                  style: TeXViewStyle(
                    padding: const TeXViewPadding.only(top: 15),
                    textAlign: TeXViewTextAlign.center,
                    fontStyle: TeXViewFontStyle(fontSize: 10),
                    // contentColor: const Color.fromARGB(255, 221, 215, 215),
                    // elevation: 11
                  )),
        ]));
  }

  getSeventhFormula() {
    return TeXViewContainer(
        child: TeXViewColumn(
            style: const TeXViewStyle(
              textAlign: TeXViewTextAlign.left,
              // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
            children: [
          TeXViewDocument(
              r"""<p>$${7. &nbsp;Quantity &nbsp; Index &nbsp; Number = Q_{01} = {{\displaystyle \sum q_1 \over \displaystyle \sum q_0} w \over \displaystyle \sum w} \times 100}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
              )),
        ]));
  }

  getEightFormula() {
    return TeXViewContainer(
        child: TeXViewColumn(
            style: const TeXViewStyle(
              textAlign: TeXViewTextAlign.left,
              // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
            children: [
              TeXViewDocument(
                  r"""<p>$${8. &nbsp; Price &nbsp; Index &nbsp; Number &nbsp; Using &nbsp; Geometric &nbsp; Mean}$$</p>""",
                  style: TeXViewStyle(
                    padding: const TeXViewPadding.only(top: 15),
                    textAlign: TeXViewTextAlign.center,
                    fontStyle: TeXViewFontStyle(fontSize: 10),
                    // contentColor: const Color.fromARGB(255, 221, 215, 215),
                    // elevation: 11
                  )),
              TeXViewDocument(
                  r"""<p>$${P_{01} = [\prod ({p_1 \over p_0} \times 100)^w ]^{1 \over \displaystyle \sum w} = Antilog[{\displaystyle \sum w &nbsp; log({p_1 \over p_0} \times 100) \over \displaystyle \sum w}]}$$</p>""",
                  style: TeXViewStyle(
                    textAlign: TeXViewTextAlign.left,
                    fontStyle: TeXViewFontStyle(fontSize: 10),
                    // contentColor: const Color.fromARGB(255, 221, 215, 215),
                    // elevation: 11
                  )),
        ]));
  }

  getNineFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(r"""<p>$${S_y = \sigma_y \sqrt{1-r^2}} $$</p>""",
              style: TeXViewStyle(
                padding: const TeXViewPadding.all(0),
                // backgroundColor: Colors.yellow,
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getTenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(r"""<p>$${S_x = \sigma_x \sqrt{1-r^2}} $$</p>""",
              style: TeXViewStyle(
                padding: const TeXViewPadding.all(0),
                // backgroundColor: Colors.yellow,
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getElevenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${Total &nbsp; variation = \sigma_y ^2 = {1 \over n}\displaystyle\sum_{i=1}^n (y_i - \bar y)^2}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getTweleFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${P_{01} = {\displaystyle \sum I.w \over \displaystyle \sum w} &nbsp; or &nbsp; Q_{01} = {\displaystyle \sum I.w \over \displaystyle \sum w} }$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getThirteenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${Inflation = {Current &nbsp; price &nbsp; index &nbsp; number &nbsp; - Previous &nbsp; year &nbsp; price &nbsp; index &nbsp; number \over Previous &nbsp; year &nbsp; price &nbsp; index &nbsp; number } \times 100}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 8),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getFourteenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${{P_{01} ^ L \over Q_{01} ^L} = {P_{01} ^p \over Q_{01} ^p}}$$ </p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getFifteenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${15. &nbsp; Cost &nbsp; of &nbsp; Living &nbsp; Index &nbsp; Number = {\displaystyle\sum p_1 q_0 \over \displaystyle \sum p_0 q_0} \times 100}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
          TeXViewDocument(
              r"""<p>\(p_0 \) = Price of commodity in base period.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
          TeXViewDocument(
              r"""<p>\(p_1 \) = Price of commodity in current period.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
          TeXViewDocument(
              r"""<p>\(q_0 \) = Quantity consumed in base period.</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.center,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getSixteenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${16. &nbsp; Cost &nbsp; of &nbsp; Living &nbsp; Index &nbsp; Number = {\displaystyle\sum Iw \over \displaystyle \sum w}}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
          TeXViewDocument(
              r"""<p>$${I = {Current period price of commodity \over Base period price of commodity}}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getSeventeenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${New &nbsp; base &nbsp; index &nbsp; number = {Original &nbsp; index &nbsp; number \over Index &nbsp; number &nbsp; of &nbsp; new &nbsp; base &nbsp; year} \times 100}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getEighteenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${Real &nbsp; wage &nbsp; or &nbsp; deflated &nbsp; wage = {Actual &nbsp money &nbsp wage \over Price &nbsp; index &nbsp; number &nbsp; \lor cost &nbsp; of &nbsp; living &nbsp; index &nbsp; number } \times 100}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 7),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getNineteenFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${Real &nbsp; capital &nbsp; gain = Sale &nbsp; price &nbsp; - Indexed &nbsp; cost}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 10),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getTwentyFourmula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(r"""<p>$${{Purchase &nbsp; price \over Cost &nbsp; of &nbsp; Inflation &nbsp; index \isin the &nbsp; purchase &nbsp; year }={Indexed &nbsp; cost \over Cost &nbsp; of &nbsp; Inflation &nbsp; index \isin the &nbsp; year &nbsp; of &nbsp; purchase}}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 7),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getTwentyOneFormula() {
    return TeXViewColumn(
        style: const TeXViewStyle(
            // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
            ),
        children: [
          TeXViewDocument(
              r"""<p>$${Indexed &nbsp; cost = Purchase cosr \times {year &nbsp; of &nbsp; trannsaction \over Cost &nbsp; Inflation &nbsp; index \isin the &nbsp; year &nbsp; of &nbsp; purchase}}$$</p>""",
              style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(fontSize: 8),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                // elevation: 11
              )),
        ]);
  }

  getFistIndex(String index) {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>1.</p>""",
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
        child: TeXViewDocument(r"""<p>2. Regression line of Y on X:</p>""",
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
        child: TeXViewDocument(r"""<p>3. Sum of squares of errors: </p>""",
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
        child: TeXViewDocument(r"""<p>4.</p>""",
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
        child: TeXViewDocument(r"""<p>5.</p>""",
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
        child: TeXViewDocument(r"""<p>6.</p>""",
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
            r"""<p>7. Acute angle \( (\theta) \) between the regression lines:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getEightIndex(String index) {
    return TeXViewContainer(
        style: const TeXViewStyle(margin: TeXViewMargin.only(bottom: 10)),
        child: TeXViewDocument(
            r"""<p>8. Point of intersection of two regression lines is  \( (\bar X, \bar Y) \)</p>""",
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
        child: TeXViewDocument(
            r"""<p>9. Standard error of regression estimate of y on x</p>""",
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
        child: TeXViewDocument(
            r"""<p>9. Standard error of regression estimate of x on y</p>""",
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
        child: TeXViewDocument(r"""<p>11.</p>""",
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
        child: TeXViewDocument(r"""<h3>12. Index Number Using Group Indices:</h3>""",
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
        child: TeXViewDocument(r"""<p>13.</p>""",
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
        child: TeXViewDocument(r"""<p>14.</p>""",
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
        child: TeXViewDocument(r"""<p>14. Coefficient of Determination</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getSeventeenIndex() {
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

  getEighteenIndex() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>18.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getNineteenIndex() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>19.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getTwentyIndex() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>20.</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getTwentyOneIndex() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(r"""<p>21.</p>""",
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
            r"""<p>\( \bullet \) Unweighted Index Numbers:</p>""",
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
        child: TeXViewDocument(
            r"""<p>\( \bullet \) Weighted Index Numbers:</p>""",
            style: TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                    fontSize: 10, fontWeight: TeXViewFontWeight.bold),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getSubHeading1() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(
            r"""<p>\( \triangleright \) Unweighted aggregate type:</p>""",
            style: TeXViewStyle(
                padding: const TeXViewPadding.only(left: 15),
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                  fontSize: 10,
                ),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getSubHeading2() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(
            r"""<p>\( \triangleright \) Unweighted or simple average of price relatives:</p>""",
            style: TeXViewStyle(
                padding: const TeXViewPadding.only(left: 15),
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                  fontSize: 10,
                ),
                // contentColor: const Color.fromARGB(255, 221, 215, 215),
                elevation: 11)));
  }

  getSubHeading3() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(
            r"""<p>\( \bullet \) Cost of Living Index Numbers</p>""",
            style: TeXViewStyle(
                // padding: const TeXViewPadding.only(left: 15),
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                  fontSize: 10,
                ))));
  }

  getSubHeading4() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(
            r"""<p>A. Aggregate expenditure method:</p>""",
            style: TeXViewStyle(
                padding: const TeXViewPadding.only(left: 15, top: 10),
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                  fontSize: 10,
                  fontWeight: TeXViewFontWeight.bold
                ))));
  }

  getSubHeading5() {
    return TeXViewContainer(
        // style: TeXViewStyle(backgroundColor: Colors.yellow),
        child: TeXViewDocument(
            r"""<p>B. Family budget method:</p>""",
            style: TeXViewStyle(
                padding: const TeXViewPadding.only(left: 15, top: 10),
                textAlign: TeXViewTextAlign.left,
                fontStyle: TeXViewFontStyle(
                  fontSize: 10,
                  fontWeight: TeXViewFontWeight.bold
                ))));
  }
}
