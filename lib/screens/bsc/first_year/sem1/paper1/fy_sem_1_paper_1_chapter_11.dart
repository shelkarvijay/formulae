import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class FYSem1Paper1Chapter11 extends StatefulWidget {
  @override
  State<FYSem1Paper1Chapter11> createState() => _FYSem1Paper1Chapter11();

}

class _FYSem1Paper1Chapter11 extends State<FYSem1Paper1Chapter11> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 1.16,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
        top: 10,
      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30))),
      child: Column(children: <Widget>[
        getFormulae(1, "Class Mark (Mid Value) = ", "Upper limit + Lower limit", "2"),
        getSecondFormula(),
        getFormulae(3, "Relative frequency = ", "Class frequency", "Total frequency"),
        getFormulae(4, "Frequency density = ", "Class frequency", "Class width"),
        getFifthFormula(),
        getSixthFormula()
      ]));
  }

   Widget getFormulae(int index, String evaluate, String numarator, String demominator) {
    
    // Variable midValue = Variable('Class Mark (Mid Value)'), y = Variable('upparLower');
    // Variable upparLimit = Variable('Upper limit'), lowerLimit = Variable('Lower limit');

    // // Power xSquare = Power(x, 2);
    // Cos yCos = Cos(y);
    // Number numberTwo = Number(2.0);
    // Expression midValues = (upparLimit + lowerLimit) / numberTwo;
    return Container(
      // height: 72,
      width: MediaQuery.of(context).size.width,
      // color: Colors.green,
      padding: const EdgeInsets.all(15),
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('${index}. ', style: GoogleFonts.montserrat(
              // textStyle: const TextStyle(fontSize: 13),
              fontStyle: FontStyle.italic,
              color: const Color.fromARGB(255, 43, 44, 44)),),

            Text(evaluate, style: GoogleFonts.montserrat(
              // textStyle: const TextStyle(fontSize: 13),
              fontStyle: FontStyle.italic,
              color: const Color.fromARGB(255, 46, 47, 49)),),
            Align(
              alignment: Alignment.topRight,
            child: Container(
              width: index == 1 ? 270 : 200,
              // color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(numarator, style: GoogleFonts.montserrat(
                    // textStyle: const TextStyle(fontSize: 13),
                    fontStyle: FontStyle.italic,
                    color: const Color.fromARGB(255, 41, 42, 43))),

                  SizedBox(
                    height: 10,
                    width: MediaQuery.of(context).size.width,
                    child: const Divider(thickness: 1, color: Colors.black,),
                  ),

                  Text(demominator, style: GoogleFonts.montserrat(
                    // textStyle: const TextStyle(fontSize: 13),
                    fontStyle: FontStyle.italic,
                    color: const Color.fromARGB(255, 53, 54, 56)))
                ],
              )
            ))
          ],
        ),
      // ),
    );
  }

  Widget getSecondFormula() {
    return Container(
      height: 72,
      // color: Colors.green,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(15),
      child: Wrap(
        direction: Axis.horizontal,
        children: <Widget>[
          Text('2. ', style: GoogleFonts.montserrat(
              textStyle: const TextStyle(fontSize: 13),
              fontStyle: FontStyle.italic,
              color: const Color.fromARGB(255, 43, 44, 44)),),

            Text('Class width = ', style: GoogleFonts.montserrat(
              textStyle: const TextStyle(fontSize: 13),
              fontStyle: FontStyle.italic,
              color: const Color.fromARGB(255, 46, 47, 49)),),

            Text('Upper boundary – Lower boundary', style: GoogleFonts.montserrat(
              textStyle: const TextStyle(fontSize: 13),
              fontStyle: FontStyle.italic,
              color: const Color.fromARGB(255, 46, 47, 49)),)
        ],
      ),
    );
  }

  getFifthFormula() {
    return Container(
      height: 72,
      // color: Colors.green,
      padding: const EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('5. ',
            style: GoogleFonts.montserrat(
            textStyle: const TextStyle(fontSize: 13),
            fontStyle: FontStyle.italic,
            color: const Color.fromARGB(255, 43, 44, 44)),),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: 'Number of classes to be made for the dataset is ',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(fontSize: 13),
                  fontStyle: FontStyle.italic,
                  color: const Color.fromARGB(255, 43, 44, 44)),
                children: <TextSpan>[
                  TextSpan(
                    text: '1+3.322 log(N)',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(fontSize: 13),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 43, 44, 44)
                    )),
                  TextSpan(
                    text: ' by Sturge’s rule. ',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(fontSize: 13),
                      fontStyle: FontStyle.italic,
                      color: const Color.fromARGB(255, 43, 44, 44))
                  ),
                ],
              ),
            )
          )
        ],
      )
      // ),
    );
  }

  Widget getSixthFormula() {
    return Container(
      height: 98,
      // color: Colors.green,
      padding: const EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('6. ',
            style: GoogleFonts.montserrat(
            textStyle: const TextStyle(fontSize: 13),
            fontStyle: FontStyle.italic,
            color: const Color.fromARGB(255, 43, 44, 44)),),
          Expanded(
            child: Text('Number of classes to be made for the dataset is √N by Thumb rule.\n(N is number of observations in the dataset.)',
              style: GoogleFonts.montserrat(
              textStyle: const TextStyle(fontSize: 13),
              fontStyle: FontStyle.italic,
              color: const Color.fromARGB(255, 43, 44, 44)),
              textAlign: TextAlign.start,)
          ),

          // Text('(N is number of observations in the dataset.)',
          //   style: GoogleFonts.montserrat(
          //   textStyle: const TextStyle(fontSize: 13),
          //   fontStyle: FontStyle.italic,
          //   color: const Color.fromARGB(255, 43, 44, 44)),)
        ],
      ),
      // ),
    );
  }


}