// ignore_for_file: unnecessary_new

import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:formulae/constants.dart/colors.dart';
import 'package:formulae/constants.dart/routes.dart';
import 'package:formulae/screens/dashboard.dart';
import 'package:formulae/screens/home.dart';
import 'package:get/route_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

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
      Get.to(
        const Dashboard(),
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
      body: Center(
        child: getContainer()
        // Container(
        //   decoration: BoxDecoration(
        //     border: Border.all(color: const Color.fromARGB(255, 38, 74, 107), width: 10),
        //     borderRadius: const BorderRadius.all(Radius.circular(100)),
        //   ),
        //   child: Image.asset(
        //     'assets/images/fx.png',
        //     // fit: BoxFit.cover,
        //     height: 100,
        //     width: 100,
        //   ),
        //   // height: MediaQuery.of(context).size.height,
        //   // width: double.infinity,
        // ),
      ),
    );
  }

}