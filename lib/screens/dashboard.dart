import 'package:flutter/material.dart';
import 'package:formulae/constants.dart/routes.dart';
import 'package:formulae/screens/courses.dart';
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
        now.difference(currentBackPressTime) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Press Back Button Again to Exit'))); //scaffold message, you can show Toast message too.
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
                appBar: CustomAppbar(
                  screenName: '',
                  backgroundColorName: const Color.fromARGB(255, 38, 74, 107),
                  titleColor: Colors.white,
                ),
                drawer: const Drawer(),
                body: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    child: Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            color: Color.fromARGB(255, 38, 74, 107)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 18, bottom: 5),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Science",
                                      style: GoogleFonts.montserrat(
                                          textStyle:
                                              const TextStyle(fontSize: 18),
                                          color: const Color.fromARGB(
                                              255, 244, 245, 247)),
                                      textAlign: TextAlign.left,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(
                                      Icons.library_books,
                                      size: 20,
                                      color: Color.fromARGB(255, 235, 238, 245),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                  padding: const EdgeInsets.only(
                                      left: 18, right: 18),
                                  height:
                                      MediaQuery.of(context).size.height / 1.10,
                                  // margin: const EdgeInsets.only(top: 75),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30))),
                                  child: Column(children: [
                                    facultyHeader(),
                                    Expanded(
                                      child: GridView.count(
                                          crossAxisCount: 2,
                                          padding: const EdgeInsets.all(3.0),
                                          childAspectRatio: 1.2,
                                          crossAxisSpacing: 20.0,
                                          mainAxisSpacing: 20.0,
                                          shrinkWrap: true,
                                          children: List.generate(
                                              faculty.length, (index) {
                                            return InkWell(
                                                onTap: (() =>
                                                    getNavigationScreen(
                                                        faculty[index].title)),
                                                child: Container(
                                                  // height: 250,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2.3,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              252,
                                                              252,
                                                              252),
                                                      border: Border.all(
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              192, 218, 241)),
                                                      // ignore: prefer_const_literals_to_create_immutables
                                                      boxShadow: [
                                                        const BoxShadow(
                                                          offset: Offset(2, 2),
                                                          blurRadius: 12,
                                                          color: Color.fromRGBO(
                                                              0, 0, 0, 0.16),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.circular(
                                                                  15))),
                                                  padding:
                                                      const EdgeInsets.all(20),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        faculty[index].icon,
                                                        size: 30.0,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 38, 74, 107),
                                                      ),
                                                      const SizedBox(
                                                        height: 15,
                                                      ),
                                                      Text(
                                                        faculty[index].title,
                                                        style: GoogleFonts.getFont(
                                                            'Montserrat',
                                                            textStyle: const TextStyle(
                                                                fontSize: 20,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        38,
                                                                        74,
                                                                        107),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                      )
                                                    ],
                                                  ),
                                                ));
                                          })),
                                    )
                                  ]))
                            ]))))));
  }

  facultyHeader() {
    return Stack(children: <Widget>[
      SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Card(
            elevation: 4.0,
            margin: const EdgeInsets.only(top: 30, bottom: 20),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            color: const Color.fromARGB(255, 38, 74, 107),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 225,
                    padding: const EdgeInsets.all(20),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: [
                        Flexible(
                            child: Text(
                                'Select a class you want to learn and enjoy the app.',
                                style: GoogleFonts.getFont('Montserrat',
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 244, 245, 247),
                                        fontWeight: FontWeight.w400))))
                      ],
                    ))
              ],
            ),
          )),
      Positioned(
        right: 20.0,
        child: Image.asset(
          'assets/images/cartoon2.png',
          // height: 140,
          width: 110,
          repeat: ImageRepeat.noRepeat,
        ),
      ),
    ]);
  }

  getNavigationScreen(String selectedItem) {
    switch (selectedItem) {
      case "11th":
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Sorry! This feacture is not available for now'),
          backgroundColor: Color.fromARGB(255, 77, 99, 117),
        ));
        break;

      case "12th":
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Sorry! This feacture is not available for now'),
          backgroundColor: Color.fromARGB(255, 77, 99, 117),
        ));
        break;

      case "Bsc":
        Get.to(const Courses(),
            duration: const Duration(seconds: 0, milliseconds: 500),
            transition: Transition.rightToLeft,
            routeName: RoutingNamesConstant.COURSES);
        break;

      case "Msc":
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Sorry! This feacture is not available for now'),
          backgroundColor: Color.fromARGB(255, 77, 99, 117),
        ));
        break;

      default:
    }
  }
}

class FacultyModal {
  const FacultyModal({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<FacultyModal> faculty = <FacultyModal>[
  FacultyModal(title: '11th', icon: Icons.grade),
  FacultyModal(title: '12th', icon: Icons.emoji_events_sharp),
  FacultyModal(title: 'Bsc', icon: Icons.school),
  FacultyModal(title: 'Msc', icon: Icons.school)
];
