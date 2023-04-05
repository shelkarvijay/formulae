// ignore_for_file: unnecessary_new

import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:formulae/constants.dart/colors.dart';
import 'package:formulae/constants.dart/routes.dart';
import 'package:formulae/screens/dashboard.dart';
import 'package:formulae/screens/home.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _resizableController;
  @override
  void initState() {
    navigateTo();
    _resizableController = new AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1000,
      ),
    );
    _resizableController.addStatusListener((animationStatus) {
      switch (animationStatus) {
        case AnimationStatus.completed:
          _resizableController.reverse();
          break;
        case AnimationStatus.dismissed:
          _resizableController.forward();
          break;
        case AnimationStatus.forward:
          break;
        case AnimationStatus.reverse:
          break;
      }
    });
    _resizableController.forward();
    super.initState();
  }

  void navigateTo() {
    // ignore: prefer_const_constructors
    new Timer.periodic(new Duration(seconds: 5), (time) {
      Get.to(const Dashboard(),
          duration: const Duration(seconds: 0, milliseconds: 300),
          transition: Transition.rightToLeft,
          routeName: RoutingNamesConstant.DASHBOARD_ROUTE);
      // Navigator.of(context)
      //     .pushReplacementNamed(RoutingNamesConstant.HOME_ROUTE);
      time.cancel();
    });
  }

  AnimatedBuilder getContainer() {
    return new AnimatedBuilder(
        animation: _resizableController,
        builder: (context, child) {
          return Container(
            // padding: EdgeInsets.all(24),
            child: Image.asset(
              'assets/images/fx.png',
              // fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              border: Border.all(
                  color: const Color.fromARGB(255, 38, 74, 107),
                  width: _resizableController.value * 5),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              radius: 2,
              colors: [
                Color.fromARGB(255, 80, 118, 153),
                Color.fromARGB(255, 17, 41, 65)
              ],
            ),
          ),
          child: Stack(children: [
            Positioned(
              bottom: 60,
              left: 20,
              right: 20,
              child: Card(
                child: Container(
                    width: 40,
                    alignment: Alignment.center,
                    // decoration: BoxDecoration(color: Colors.red),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      // direction: Axis.vertical,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        RichText(
                            textScaleFactor: 1.7,
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: 'Welcome to the world of ',
                                style: GoogleFonts.getFont('Montserrat',
                                    textStyle: const TextStyle(
                                        fontSize: 18,
                                        color: Color.fromARGB(255, 35, 45, 54),
                                        fontWeight: FontWeight.w400)),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'STATISTICS',
                                      style: GoogleFonts.getFont('Montserrat',
                                          textStyle: const TextStyle(
                                              fontSize: 20,
                                              color: Color.fromARGB(
                                                  255, 38, 74, 107),
                                              fontWeight: FontWeight.w500))),
                                ])),
                        const SizedBox(
                          height: 8,
                        ),
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: 'Do study with ',
                                style: GoogleFonts.getFont('Montserrat',
                                    textStyle: const TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 35, 45, 54),
                                        fontWeight: FontWeight.w400)),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'STATISTICA',
                                      style: GoogleFonts.getFont('Montserrat',
                                          textStyle: const TextStyle(
                                              fontSize: 17,
                                              color: Color.fromARGB(
                                                  255, 38, 74, 107),
                                              fontWeight: FontWeight.w400))),
                                  TextSpan(
                                      text: ' and enjoy the App',
                                      style: GoogleFonts.getFont('Montserrat',
                                          textStyle: const TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 35, 45, 54),
                                              fontWeight: FontWeight.w400)))
                                ])),
                        const SizedBox(
                          height: 8,
                        ),
                        getContainer()
                      ],
                    )),
              ),
            ),
            Positioned(
                child: Container(
              alignment: Alignment.center,
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/splash.png',
                // height: 140,
                width: 250,
                repeat: ImageRepeat.noRepeat,
              ),
            )),
          ]),
        ));
  }
}
