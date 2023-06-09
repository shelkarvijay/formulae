import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:google_fonts/google_fonts.dart';

class FYSem1Paper2Chapter6 extends StatefulWidget {
  @override
  State<FYSem1Paper2Chapter6> createState() => _FYSem1Paper2Chapter6();
}

class _FYSem1Paper2Chapter6 extends State<FYSem1Paper2Chapter6> {
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
            getFourthFormula()
            
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
        TeXViewDocument(r"""<p>$${P.m.f. P(X=k)=1 &nbsp; &nbsp; k \in R}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Mean:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${E(X) = k}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Variance:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${Var(X) = 0}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
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
        TeXViewDocument(r"""<p>$${P.m.f. P(X=x)={1\over n} x = 1,2,....,n}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Mean:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${E(X) = {n+1 \over 2}}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Variance:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${Var(X) = {n^2-1 \over 12}}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Coefficient of Skewness:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${Y_1 = 0}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) M.G.F.:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${M_x(t) = {e^t\over n}[{(1-e^{nt})\over (1-e^t)}]}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Does not satisfy additive property. </p>""",
          style: TeXViewStyle(
            margin: const TeXViewMargin.only(bottom: 10),
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
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
        TeXViewDocument(r"""<p>$${P.m.f. P(X=x)=p^x q^{1-x}, x = 0,1}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Mean:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${E(X) = p}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Variance:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${Var(X) = pq}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) M.G.F.: &nbsp; </p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${M_x(t) = (q+pe^t)}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${Satisfies &nbsp;  additive&nbsp;  property. &nbsp; If&nbsp;  X_i &nbsp; Ber(p)&nbsp;  then&nbsp;  {\displaystyle\sum_{i=1}^n X_i &nbsp; Binomial(n,p)}}$$ </p>""",
          style: TeXViewStyle(
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
        padding: TeXViewPadding.only(top: 10, bottom: 10)
        // border: TeXViewBorder.only(bottom: TeXViewBorderDecoration(borderWidth: 1, borderColor: Color.fromARGB(255, 80, 78, 78)))
      ),
      children: [
        TeXViewDocument(r"""<p>$${P.m.f. &nbsp; P(X=x)=\binom{n}{x} p^x q^{n-x} x = 0,1,2,....,n. &nbsp; q=1-p.}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Mean:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${E(X) = np}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Variance:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${Var(X) = npq}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) M.G.F.: </p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${M_x(t) = (q+pe^t)^n}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Recurrence relation between probabilities P(X=x+1)=??:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${\binom{n-x}{x+1}{p \over q}P(X=x)}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Mode:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${M=[(n+1)p] &nbsp; &nbsp; if &nbsp; (n+1)p &nbsp; is &nbsp; not &nbsp; an &nbsp; integer}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${=(n+1)p &nbsp; and &nbsp; (n+1)p-1 &nbsp; if &nbsp; (n+1)p &nbsp; is &nbsp; not &nbsp; an &nbsp; integer}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Recurrence relation between probabilities:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${\mu_{r+1}=pq[{d\mu_r \over dp} + {n \over q}\mu_r] &nbsp; r=0,1,2,....}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${\mu_r=pq[{d\mu_r \over dp} + nr \mu_{r-1} &nbsp; r=1,2,....}$$ </p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Coefficient of Skewness:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${Y_1 = {q-p \over \sqrt{npq}}}$$</p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.center,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Coefficient of Kurtosis:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${Y_2 = {1-6pq \over npq}}$$</p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.center,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Satisfies additive property.</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${If X_i Bin(n_i,p); &nbsp; i=1,2,3,...k.}$$</p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.center,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>$${then &nbsp; {\displaystyle\sum_{i=1}^k X_i} &nbsp; Bin({\displaystyle\sum_{i=1}^k n_i, p_i})}$$</p>""",
          style: TeXViewStyle(
            textAlign: TeXViewTextAlign.center,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>\(\bullet \) Conditional distribution of X given X+Y=n:</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 40),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
        TeXViewDocument(r"""<p>If X Bin(n_1,p) and Y Bin(n_2, p), X and Y are independent, then X/X+Y = n follows Hypergeometric distribution with parameters N=n_1 + n_2 , M =n_1 \( \land \) n</p>""",
          style: TeXViewStyle(
            padding: const TeXViewPadding.only(left: 50, top: 10, right: 50),
            textAlign: TeXViewTextAlign.left,
            fontStyle: TeXViewFontStyle(fontSize: 10),
            // contentColor: const Color.fromARGB(255, 221, 215, 215),
            // elevation: 11
          )
        ),
      ]);
  }

  getFistIndex(String index) {
    return TeXViewContainer(
      // style: TeXViewStyle(backgroundColor: Colors.yellow),
      child: TeXViewDocument(r"""<p>1. Degenerate distribution</p>""",
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
      child: TeXViewDocument(r"""<p>2. Discrete Uniform distribution</p>""",
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
      child: TeXViewDocument(r"""<p>3. Bernoulli distribution</p>""",
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
        padding: TeXViewPadding.only(top: 10,)
      ),
      child: TeXViewDocument(r"""<p>4. Binomial distribution</p>""",
        style: TeXViewStyle(
          textAlign: TeXViewTextAlign.left,
          fontStyle: TeXViewFontStyle(fontSize: 10, fontWeight: TeXViewFontWeight.bold),
          // contentColor: const Color.fromARGB(255, 221, 215, 215),
          elevation: 11
      )));
  }
}
