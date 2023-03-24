import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:formulae/constants.dart/routes.dart';
import 'package:formulae/screens/courses.dart';
import 'package:formulae/screens/shared/chapter_list.dart';
import 'package:formulae/screens/shared/chapter_list_common.dart';
import 'package:formulae/screens/shared/custom_appbar.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

 late DateTime currentBackPressTime;

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null || 
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      // Fluttertoast.showToast(msg: 'exit_warning');
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope( 
        onWillPop: onWillPop,
      child: Scaffold(
        // backgroundColor: Theme.of(context).canvasColor,
        appBar: CustomAppbar(
          screenName: '',
          backgroundColorName: const Color.fromARGB(255, 38, 74, 107),
          titleColor: Colors.white,
        ),
        drawer: Drawer(),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            // borderRadius: BorderRadius.only(
            //   topLeft: Radius.circular(20),
            //   topRight: Radius.circular(20)
            // ),
          // color: Color.fromARGB(255, 175, 191, 201)),
          // color: const Color.fromRGBO(49, 87, 110, 1.0),
          color: Color.fromARGB(255, 38, 74, 107)),
          // padding:
          //     const EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Container(
              // color: Colors.black,
              padding: const EdgeInsets.only(left: 18, bottom: 5),
              child: Row(
                children: <Widget>[
                  Text("Courses",
                      style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(fontSize: 18),
                      color: const Color.fromARGB(255, 235, 238, 245)),
                      textAlign: TextAlign.left,),
                  const SizedBox(width: 10,),
                  const Icon(Icons.library_books, size: 20, color: Color.fromARGB(255, 235, 238, 245),)
                ],
              ),
            ),
            // SizedBox(height: 10,),
           Container(
            height: MediaQuery.of(context).size.height / 1.14,
            // margin: const EdgeInsets.only(top: 75),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
              )
            ),
            child: GridView.count(
            crossAxisCount: 1,
            padding: const EdgeInsets.all(3.0),
            childAspectRatio: 3,
            children: <Widget>[
              makeDashboardItem("First Year", Icons.menu_book),
              makeDashboardItem("Second Year", Icons.star_half),
              makeDashboardItem("Third Year", Icons.school),
              // makeDashboardItem("Alphabet", Icons.alarm),
              // makeDashboardItem("Alphabet", Icons.alarm),
              // makeDashboardItem("Alphabet", Icons.alarm)
            ],
          ),
          )]))))));
  }

  makeDashboardItem(String title, IconData icon) {
    return Card(
        elevation: 4.0,
        margin: const EdgeInsets.all(8.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        color: const Color.fromARGB(255, 245, 250, 250),
        // child: Container(
          // decoration: const BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
          child: InkWell(
            onTap: () {
              switch (title) {
                case "First Year":
                  // Navigator.of(context)
                  // .pushReplacementNamed(RoutingNamesConstant.FIRST_YEAR);
                  // Get.to(
                  //   const ChapterListCommon(),
                  //   duration: const Duration(seconds: 0, milliseconds: 500),
                  //   transition: Transition.rightToLeft,
                  //   routeName: RoutingNamesConstant.FIRST_YEAR);
                  Get.to(
                    const ChapterList(),
                    duration: const Duration(seconds: 0, milliseconds: 500),
                    transition: Transition.rightToLeft,
                    routeName: RoutingNamesConstant.CHAPTER_LIST);
                  break;

                case "Second Year":
                  // Navigator.of(context)
                  // .pushReplacementNamed(RoutingNamesConstant.FIRST_YEAR);
                  Get.to(
                    const ChapterList(),
                    duration: const Duration(seconds: 0, milliseconds: 500),
                    transition: Transition.rightToLeft,
                    routeName: RoutingNamesConstant.CHAPTER_LIST);
                  break;

                case "Third Year":
                  // Navigator.of(context)
                  // .pushReplacementNamed(RoutingNamesConstant.FIRST_YEAR);
                  Get.to(
                    const Courses(),
                    duration: const Duration(seconds: 0, milliseconds: 500),
                    transition: Transition.rightToLeft,
                    routeName: RoutingNamesConstant.COURSES);
                  break;
                default:
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // const SizedBox(height: 10.0),
                Center(
                  child: Icon(
                  icon,
                  size: 40.0,
                  color: const Color.fromARGB(255, 38, 74, 107),
                )),
                const SizedBox(height: 10.0),
                Center(
                  child: Text(title,
                      // style: const TextStyle(fontSize: 22, color: Colors.black, letterSpacing: 1)),
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(fontSize: 15)
                    )
                  )
                )
              ],
            ),
          ),
        );
  }
}
