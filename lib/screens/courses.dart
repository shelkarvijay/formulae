// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:formulae/constants.dart/routes.dart';
import 'package:formulae/screens/shared/chapter_list.dart';
import 'package:formulae/screens/shared/chapter_list_common.dart';
import 'package:formulae/screens/shared/custom_appbar.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  late DateTime currentBackPressTime;
  // var thoughtList = ['Facts are stubborn, but statistics are more pliable', ''];

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
        child: Scaffold(
      // backgroundColor: Theme.of(context).canvasColor,
      appBar: CustomAppbar(
        screenName: '',
        backgroundColorName: const Color.fromARGB(255, 38, 74, 107),
        titleColor: const Color.fromARGB(255, 214, 219, 226),
      ),
      body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Color.fromARGB(255, 38, 74, 107)),
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
                              Text(
                                "Courses",
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(fontSize: 18),
                                    color: const Color.fromARGB(
                                        255, 235, 238, 245)),
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
                        // SizedBox(height: 10,),

                        Container(
                          height: MediaQuery.of(context).size.height / 1.10,
                          // margin: const EdgeInsets.only(top: 75),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          child: Column(
                            // crossAxisCount: 1,
                            // padding: const EdgeInsets.all(3.0),
                            // childAspectRatio: 3,
                            children: <Widget>[
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.all(20),
                                  padding: EdgeInsets.only(bottom: 10),
                                  height: 200,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/openBook.jpg',
                                          ),
                                          fit: BoxFit.cover),
                                      // gradient: RadialGradient(colors: [
                                      //   Color.fromARGB(255, 38, 74, 107),
                                      //   Color.fromARGB(255, 183, 219, 250),
                                      //   // Color.fromARGB(255, 38, 74, 107)
                                      // ], tileMode: TileMode.decal,
                                      // radius: 2,),
                                      // color: Color.fromARGB(255, 38, 74, 107),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  // child: Expanded(
                                      child: CarouselSlider(
                                    options: CarouselOptions(
                                      initialPage: 0, autoPlay: true,
                                      // height: 100,
                                      // padEnds: false,
                                      viewportFraction: 1,
                                    ),
                                    items: thoughtList.map((i) {
                                      return Builder(
                                          builder: (BuildContext context) {
                                        return Container(
                                          // decoration: BoxDecoration(color: Colors.yellow),
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 10, right: 30),
                                          width:
                                              MediaQuery.of(context).size.width,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                i.title,
                                                textAlign: TextAlign.right,
                                                style: GoogleFonts.getFont(
                                                    'Montserrat',
                                                    textStyle: const TextStyle(
                                                        fontSize: 17,
                                                        color: Color.fromARGB(
                                                            255, 166, 18, 44),
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ),
                                              Text(
                                                i.writter,
                                                textAlign: TextAlign.right,
                                                style: GoogleFonts.getFont(
                                                    'Montserrat',
                                                    textStyle: const TextStyle(
                                                        fontSize: 14,
                                                        color: Color.fromARGB(
                                                            255, 166, 18, 44),
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                    }).toList(),
                                  )),
                              Expanded(
                                child: GridView.count(
                                    crossAxisCount: 1,
                                    padding: const EdgeInsets.all(3.0),
                                    childAspectRatio: 3.8,
                                    crossAxisSpacing: 20.0,
                                    mainAxisSpacing: 20.0,
                                    shrinkWrap: true,
                                    children: List.generate(classRooms.length,
                                        (index) {
                                      return getClassRoomItem(
                                          classRooms[index].title,
                                          classRooms[index].icon, index);
                                    })),
                              )
                            ],
                          ),
                        )
                      ])))),
    ));
  }

  getClassRoomItem(String title, IconData icon, int index) {
    //  double lastBottomMargin = index == 2 ? 20.0 : 0.0;
    return Card(
        elevation: 4.0,
        margin: EdgeInsets.only(left: 20, right: 20, bottom: index == 2 ? 20.0 : 0.0),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        color: const Color.fromARGB(255, 245, 250, 250),
        child: Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: InkWell(
            onTap: (() => getNavigationScreen(title)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                    child: Icon(
                  icon,
                  size: 40.0,
                  color: const Color.fromARGB(255, 207, 74, 98),
                )),
                const SizedBox(height: 10.0),
                Center(
                    child: Text(title,
                        // style: const TextStyle(fontSize: 22, color: Colors.black, letterSpacing: 1)),
                        style: GoogleFonts.getFont('Montserrat',
                            textStyle: const TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 38, 74, 107),
                                // fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500))))
              ],
            ),
          ),
        ));
  }

  getNavigationScreen(String selectedItem) {
    switch (selectedItem) {
      case "First Year":
        Get.to(const ChapterList(),
            duration: const Duration(seconds: 0, milliseconds: 500),
            transition: Transition.rightToLeft,
            routeName: RoutingNamesConstant.CHAPTER_LIST);
        break;

      case "Second Year":
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Sorry! This feacture is not available for now'),
          backgroundColor: Color.fromARGB(255, 77, 99, 117),
        ));
        break;

      case "Third Year":
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Sorry! This feacture is not available for now'),
          backgroundColor: Color.fromARGB(255, 77, 99, 117),
        ));
        break;
      default:
    }
  }
}

class ThoughtModal {
  const ThoughtModal({required this.title, required this.writter});
  final String title;
  final String writter;
}

const List<ThoughtModal> thoughtList = <ThoughtModal>[
  ThoughtModal(
      title: 'Facts are stubborn, but statistics are more pliable.',
      writter: '~ Mark Twain'),
  ThoughtModal(
      title: 'Statistics do not speak for themselves.',
      writter: '~ Milton Friedman'),
  // ThoughtModal(title: 'Bsc', writter: ''),
  // ThoughtModal(title: 'Msc', writter: '')
];

class ClassModal {
  const ClassModal({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<ClassModal> classRooms = <ClassModal>[
  ClassModal(title: 'First Year', icon: Icons.menu_book),
  ClassModal(title: 'Second Year', icon: Icons.star_half),
  ClassModal(title: 'Third Year', icon: Icons.school),
];
