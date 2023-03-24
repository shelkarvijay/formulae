import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:google_fonts/google_fonts.dart';

class FYSem1Paper1Chapter4 extends StatefulWidget {
  @override
  State<FYSem1Paper1Chapter4> createState() => _FYSem1Paper1Chapter4();
}

class _FYSem1Paper1Chapter4 extends State<FYSem1Paper1Chapter4> {
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
            
          ]),
      ),
    );
  }

  getFirstFormula() {
    return TeXViewColumn(
      style: const TeXViewStyle(
        border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$$μ_r = {\sum_{\substack{n\\i=1}} X_i ^r \over n} &nbsp; &nbsp; &nbsp; &nbsp; for &nbsp; individual &nbsp; observations. $$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$$μ_r = {{\sum_{\substack{n\\i=1}}f_iX_i ^r}\over {\sum_{\substack{n\\i=1}}}f_i} &nbsp; &nbsp; &nbsp; &nbsp; for &nbsp; frequency &nbsp; distribution.. $$ </p>""",
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
        border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$$μ_r = {\sum_{\substack{n\\i=1}} (X_i - \bar X) ^r \over n} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; for &nbsp; individual &nbsp; observations. $$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$$μ_r = {{\sum_{\substack{n\\i=1}}f_i(X_i - \bar X) ^r}\over {\sum_{\substack{n\\i=1}}}f_i} &nbsp; &nbsp; &nbsp; &nbsp; for &nbsp; frequency &nbsp; distribution.. $$ </p>""",
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
        border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$$μ_r(a) = {\sum_{\substack{n\\i=1}} (X_i - a) ^r \over n} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; for &nbsp; individual &nbsp; observations. $$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$$μ_r(a) = {{\sum_{\substack{n\\i=1}}f_i(X_i - a) ^r}\over {\sum_{\substack{n\\i=1}}}f_i} &nbsp; &nbsp; &nbsp; &nbsp; for &nbsp; frequency &nbsp; distribution.. $$ </p>""",
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
        border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$$If &nbsp; u = ax+b, &nbsp; then &nbsp; μ_r &nbsp; of &nbsp; u = a^r . μ_r &nbsp; of &nbsp;x$$ </p>""",
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
        border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$${μ_1 = 0}$$ </p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$$μ_2 = μ_2-μ_1^2 $$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$$μ_3 = μ_3-3μ_2μ_1+μ_1^3 $$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$$μ_4 = μ_4-4μ_3μ_1+6μ_2μ_1^2-3μ_1^4 $$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.right,
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
        border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$$μ_1 = mean, &nbsp; μ_2 = variance$$ </p>""",
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
      child: TeXViewDocument(r"""<p>1. Row Moments</p>""",
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
      child: TeXViewDocument(r"""<p>2. Central Moments</p>""",
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
      child: TeXViewDocument(r"""<p>3. Moments about a</p>""",
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
      child: TeXViewDocument(r"""<p>4. </p>""",
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
      child: TeXViewDocument(r"""<p>5. Relation between Raw and Central Moments</p>""",
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
      child: TeXViewDocument(r"""<p>6. </p>""",
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
      child: TeXViewDocument(r"""<p>7. </p>""",
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
      child: TeXViewDocument(r"""<p>8. </p>""",
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
      child: TeXViewDocument(r"""<p>9. </p>""",
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
      child: TeXViewDocument(r"""<p>10. </p>""",
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
      child: TeXViewDocument(r"""<p>11. </p>""",
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
      child: TeXViewDocument(r"""<p>12. </p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }


  getTralingWidget() {
    return Container(
      child: Column(
        children: <Widget>[
          Text('L: Largest observation', style: TextStyle(fontStyle: FontStyle.italic),),
          Text('S: Smallest observation', style: TextStyle(fontStyle: FontStyle.italic))
        ],
      )
    );
  }

  Widget x() {
    return const TeXView(
    child: TeXViewColumn(children: [
      TeXViewDocument(r"""<p> $$(Coefficient of Range) = {L-S \over L+S}.$$ </p>""", style: TeXViewStyle(contentColor: Colors.black)),
      TeXViewInkWell(
        id: "id_0",
        child: TeXViewColumn(children: [
          TeXViewDocument(r"""<h2>Flutter \( \rm\\TeX \)</h2>""",
              style: TeXViewStyle(textAlign: TeXViewTextAlign.center)),
          TeXViewContainer(
            child: TeXViewImage.network(
                'https://raw.githubusercontent.com/shah-xad/flutter_tex/master/example/assets/flutter_tex_banner.png'),
            style: TeXViewStyle(
              margin: TeXViewMargin.all(10),
              borderRadius: TeXViewBorderRadius.all(20),
            ),
          ),
          TeXViewDocument(r"""<p>                                
                       When \(a \ne 0 \), there are two solutions to \(ax^2 + bx + c = 0\) and they are
                       $$(Coefficient of Range) = {L-S \over L+S}.$$</p>""",
              style: TeXViewStyle.fromCSS(
                  'padding: 15px; color: white; background: green'))
        ]),
      )
    ]),
    style: TeXViewStyle(
      elevation: 10,
      borderRadius: TeXViewBorderRadius.all(25),
      border: TeXViewBorder.all(TeXViewBorderDecoration(
          borderColor: Colors.blue,
          borderStyle: TeXViewBorderStyle.solid,
          borderWidth: 5)),
      backgroundColor: Colors.white,
    ),
   );
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
  
}
