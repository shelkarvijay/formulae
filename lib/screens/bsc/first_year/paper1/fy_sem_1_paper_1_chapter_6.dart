import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:google_fonts/google_fonts.dart';

class FYSem1Paper1Chapter6 extends StatefulWidget {
  @override
  State<FYSem1Paper1Chapter6> createState() => _FYSem1Paper1Chapter6();
}

class _FYSem1Paper1Chapter6 extends State<FYSem1Paper1Chapter6> {
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
            // x()
            
          ]),
      ),
    );
  }

  getFirstFormula() {
    return TeXViewColumn(
      style:const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        const TeXViewContainer(
          child: TeXViewImage.asset('assets/images/fy/sem1/paper1/fySem1P1C6F1.png', ),
          style: TeXViewStyle(
            margin: TeXViewMargin.all(10),
          ),
        ),
        TeXViewDocument(r"""<p>\((A)+(B)-N \leq (AB) \leq min \{(A), (B)\}\)</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        // TeXViewImage.asset('assets/images/fy/sem1/paper1/fySem1P1C6F1.png')
      ]);
  }

  getSecondFormula() {
    return const TeXViewColumn(
      style: TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewContainer(
          child: TeXViewImage.asset('assets/images/fy/sem1/paper1/fySem1P1C6F2.png', ),
          style: TeXViewStyle(
            height: 100,
            width: 350,
            padding: TeXViewPadding.all(10),
            // borderRadius: TeXViewBorderRadius.all(20),
          ),
        ),
      ]);
  }

  getThirdFormula() {
    return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>(a) Single Attribute A </p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(10),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\((i) {(A) \geq 0}\)</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.center,
            fontStyle: TeXViewFontStyle(fontSize: 10),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$$(ii) {(\alpha) \geq 0, N - (A) \geq 0, (A) \leq N}$$ </p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),

        TeXViewDocument(r"""<p>(b) Two Attributes A and B </p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(10),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$$(i) {(AB) \geq 0}$$ </p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$$(ii) {(A\beta) \geq 0, A-(AB) \geq 0, (AB) \leq (A)}$$ </p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$$(iii) {(\alpha B) \geq 0, B-(AB) \geq 0, (AB) \leq (B)}$$ </p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$$(iv) {(\alpha \beta) \geq 0, [N-(A)-(B)+(AB)] \geq 0, (AB) \geq (A)+(B)-N}$$ </p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>(c) Three Attributes </p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(10),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$$(i) {(ABC) \geq 0, (AB\gamma) \geq 0, (A\beta C) \geq 0, (\alpha BC) \geq 0, (A\beta \gamma) \geq 0,}$$ </p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${(\alpha B \gamma \geq 0, (\alpha \beta C) \geq 0, (\alpha \beta \gamma) \geq 0.}$$ </p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(0),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 9, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$$(ii) {(AB)+(BC)+(AC) \geq (A)+(B)+(C)-N}$$ </p>""",
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

  getFourthFormula() {
    return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>\((AB) = {(A)(B) \over N} &nbsp; or &nbsp; {(AB) \over (A)} = {(\alpha B) \over (\alpha)}\) </p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(10),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 12),
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
        TeXViewDocument(r""" <h2>(A)   \(x = {-b \pm \sqrt{b^2+4ac} \over \left(2a\right)}\)</h2>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.all(10),
            // backgroundColor: Colors.yellow,
            textAlign: TeXViewTextAlign.center,
            fontStyle: TeXViewFontStyle(fontSize: 12),
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
        TeXViewDocument(r"""<p>$${(AB) < {(A)(B)\over N}}$$</p>""",
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

  getSeventhFormula() {
     return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$${(AB) = (A) &nbsp; or &nbsp; (AB) = (B)}$$</p>""",
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
        TeXViewDocument(r"""<p>$${(AB) = 0 &nbsp; or &nbsp; (\alpha \beta) = 0}$$</p>""",
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

  getNineFormula() {
     return TeXViewContainer(
      style: const TeXViewStyle(
        // backgroundColor: Colors.amber,
        textAlign: TeXViewTextAlign.left,
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      child: 
     TeXViewColumn(
      style: const TeXViewStyle(
        textAlign: TeXViewTextAlign.left,
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$$ Q_{AB} = {{(AB)(\alpha \beta) - (A\beta)(\alpha B)} \over {(AB)(\alpha \beta) + (A\beta)(\alpha B)}} ; { -1 \leq Q_{AB} \leq 1 }$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewContainer(
          // style: const TeXViewStyle(backgroundColor: Colors.red, textAlign: TeXViewTextAlign.left),
          child: TeXViewDocument(r"""<p>$$ (i) &nbsp; If &nbsp; Q_{AB} > 0, &nbsp; then &nbsp; there &nbsp; is &nbsp; a &nbsp; positive &nbsp; association &nbsp; between &nbsp; the &nbsp; attributes &nbsp; A &nbsp; and &nbsp; B.$$ </p>""",
            style: TeXViewStyle(
              // textAlign: TeXViewTextAlign.left,
              fontStyle: TeXViewFontStyle(fontSize: 8, fontWeight: TeXViewFontWeight.bold),
              // contentColor: const Color.fromARGB(255, 221, 215, 215),
              // elevation: 11
            )
          )
        ),
        TeXViewContainer(
          child: TeXViewDocument(r"""<p>$$ (ii) &nbsp; If &nbsp; Q_{AB} < 0, &nbsp; then &nbsp; there &nbsp; is &nbsp; a &nbsp; negative &nbsp; association &nbsp; between &nbsp; the &nbsp; attributes &nbsp; A &nbsp; and &nbsp; B.$$ </p>""",
            style: TeXViewStyle(
              fontStyle: TeXViewFontStyle(fontSize: 8, fontWeight: TeXViewFontWeight.bold)
            )
          )
        ),
        TeXViewContainer(
          child: TeXViewDocument(r"""<p>$$ (iii) &nbsp; If &nbsp; Q_{AB} = 0, &nbsp; then &nbsp; the &nbsp; attributes &nbsp; A &nbsp; and &nbsp; B &nbsp; are &nbsp; independent.$$ </p>""",
            style: TeXViewStyle(
              fontStyle: TeXViewFontStyle(fontSize: 8, fontWeight: TeXViewFontWeight.bold)
            )
          )
        ),
        TeXViewContainer(
          child: TeXViewDocument(r"""<p>$$ (iv) &nbsp; If &nbsp; Q_{AB} = 1, &nbsp; then &nbsp; the &nbsp; attributes &nbsp; A &nbsp; and &nbsp; B &nbsp; are &nbsp; completely &nbsp; associated.$$ </p>""",
            style: TeXViewStyle(
              fontStyle: TeXViewFontStyle(fontSize: 8, fontWeight: TeXViewFontWeight.bold)
            )
          )
        ),
        TeXViewContainer(
          child: TeXViewDocument(r"""<p>$$ (iv) &nbsp; If &nbsp; Q_{AB} = -1, &nbsp; then &nbsp; the &nbsp; attributes &nbsp; A &nbsp; and &nbsp; B &nbsp; are &nbsp; completely &nbsp; dissociated.$$ </p>""",
            style: TeXViewStyle(
              fontStyle: TeXViewFontStyle(fontSize: 8, fontWeight: TeXViewFontWeight.bold)
            )
          )
        ),


      ]));
  }

  getTenFormula() {
     return TeXViewColumn(
      style: const TeXViewStyle(
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$${Q_{AB} = Q_{\alpha \beta} = -Q_{A\beta} = -Q_{\alpha \beta}}$$ </p>""",
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
      child: TeXViewDocument(r"""<p>1. For Symmetric distribution</p>""",
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
      child: TeXViewDocument(r"""<p>2. For Positively skewed distribution (Right Tail)</p>""",
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
      child: TeXViewDocument(r"""<p>3. Conditions of Consistency of a data</p>""",
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
      child: TeXViewDocument(r"""<p>4. Attributes A and B are independent if</p>""",
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
      child: TeXViewDocument(r"""<p>5. Attributes A and B are positively associated if</p>""",
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
      child: TeXViewDocument(r"""<p>6. Attributes A and B are negatively associated if</p>""",
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
      child: TeXViewDocument(r"""<p>7. Attributes A and B are completely associated if</p>""",
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
      child: TeXViewDocument(r"""<p>8. Attributes A and B are completely dissociated if</p>""",
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
      child: TeXViewDocument(r"""<p>9. Yule’s Coefficient of Association</p>""",
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

   x() {
    return 
    // const TeXView(
    // child: 
    const TeXViewColumn(children: [
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
    ]
    // style: TeXViewStyle(
    //   elevation: 10,
    //   borderRadius: TeXViewBorderRadius.all(25),
    //   border: TeXViewBorder.all(TeXViewBorderDecoration(
    //       borderColor: Colors.blue,
    //       borderStyle: TeXViewBorderStyle.solid,
    //       borderWidth: 5)),
    //   backgroundColor: Colors.white,
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
