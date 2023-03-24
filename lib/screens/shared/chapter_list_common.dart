import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:formulae/models/chapter_model.dart';
import 'package:formulae/screens/shared/custom_appbar.dart';
import 'package:google_fonts/google_fonts.dart';

class ChapterListCommon extends StatefulWidget {
  const ChapterListCommon({Key? key}) : super(key: key);

  @override
  State<ChapterListCommon> createState() => _ChapterListCommonState();
}

class _ChapterListCommonState extends State<ChapterListCommon> {
  List<ChapterModel> chapterList = [];
  String semSelectedValue = 'Sem I';
  String paperSelectedValue = 'Paper I';

  // List of items in our dropdown menu
  var semList = ['Sem I', 'Sem II'];

  var paperList = ['Paper I', 'Paper II'];

  @override
  void initState() {
    chapterList.add(ChapterModel(
        chapterName: "chapterName 1",
        foreGrndColor: const Color.fromARGB(255, 6, 75, 102),
        backGrndColor: const Color.fromARGB(255, 81, 44, 107),
        gradientColor: const Color.fromARGB(255, 112, 161, 180)));
    chapterList.add(ChapterModel(
        chapterName: "chapterName 2",
        foreGrndColor: const Color.fromARGB(255, 81, 44, 107),
        backGrndColor: const Color.fromARGB(255, 71, 19, 41),
        gradientColor: const Color.fromARGB(255, 159, 111, 194)));
    chapterList.add(ChapterModel(
        chapterName: "chapterName 3",
        foreGrndColor: const Color.fromARGB(255, 71, 19, 41),
        backGrndColor: const Color.fromARGB(255, 66, 92, 19),
        gradientColor: const Color.fromARGB(255, 155, 94, 119)));
    chapterList.add(ChapterModel(
        chapterName: "chapterName 4",
        foreGrndColor: const Color.fromARGB(255, 66, 92, 19),
        backGrndColor: const Color.fromARGB(255, 54, 53, 71),
        gradientColor: const Color.fromARGB(255, 142, 168, 94)));
    chapterList.add(ChapterModel(
        chapterName: "chapterName 5",
        foreGrndColor: const Color.fromARGB(255, 54, 53, 71),
        backGrndColor: const Color.fromARGB(255, 185, 65, 117),
        gradientColor: const Color.fromARGB(255, 154, 151, 204)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppbar(
                screenName: "Lessons",
                backgroundColorName: Colors.white,
                titleColor: const Color.fromARGB(97, 85, 84, 84)),
            body: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 200,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 6, 75, 102),),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                            left: 25, right: 25, bottom: 20, top: 20),
                        decoration: const BoxDecoration(
                            // color: Color.fromARGB(255, 175, 191, 201)),
                            // color: const Color.fromRGBO(49, 87, 110, 1.0),
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(80))),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "You can change required Semister and Paper from below",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(fontSize: 15)),
                                  textAlign: TextAlign.center,),
                              // textAlign: TextAlign.center),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Card(
                                  child: getSemList(),
                                ),
                                
                                // const SizedBox(
                                //   height: 13,
                                // ),
                                Card(
                                  child: getPapperList(),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    // Container(
                    //   child:
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: chapterList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(child: getLesson(chapterList, index)
                              // [index].chapterName,
                              // chapterList[index].foreGrndColor,
                              // chapterList[index].backGrndColor
                              // ),
                              );
                        }),
                    // )
                  ],
                ))));
  }

  Widget getSemList() {
    return Container(
      height: 55,
      // width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(3),
              topRight: Radius.circular(3),
              bottomLeft: Radius.circular(3),
              bottomRight: Radius.circular(3)),
          // color: Color.fromARGB(255, 212, 211, 211)
          ),
      child: Theme(
          data: Theme.of(context).copyWith(
              // canvasColor: const Color.fromARGB(255, 253, 253, 249),
              buttonTheme: ButtonTheme.of(context).copyWith(
                alignedDropdown:
                    true, //If false (the default), then the dropdown's menu will be wider than its button.
              )),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              // iconEnabledColor: const Color(0xFF595959),
              items: semList.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 15),
                  ),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  semSelectedValue = value!;
                });
              },
              value: semSelectedValue,
            ),
          )),
    );
  }

  Widget getPapperList() {
    return Container(
      height: 55,
      // width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(3),
              topRight: Radius.circular(3),
              bottomLeft: Radius.circular(3),
              bottomRight: Radius.circular(3)),
          // color: Color.fromARGB(255, 212, 211, 211)
          ),
      child: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: const Color.fromARGB(255, 253, 253, 249),
              buttonTheme: ButtonTheme.of(context).copyWith(
                alignedDropdown:
                    true, //If false (the default), then the dropdown's menu will be wider than its button.
              )),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              iconEnabledColor: const Color(0xFF595959),
              items: paperList.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 15),
                  ),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  paperSelectedValue = value!;
                });
              },
              value: paperSelectedValue,
            ),
          )),
    );
  }

  Widget getLesson(List<ChapterModel> chapter, int index) {
    // String chapterName, Color foreGrndColor, Color backGrndColor) {
    return Container(
      padding: const EdgeInsets.all(0),
      height: 150,
      decoration: BoxDecoration(color: chapter[index].backGrndColor),
      child: Container(
        height: 150,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 30, left: 60),
        decoration: BoxDecoration(
          // color: Color.fromARGB(255, 175, 191, 201)),
          // color: const Color.fromRGBO(49, 87, 110, 1.0),
          // color: foreGrndColor,
          gradient: LinearGradient(colors: [
            chapter[index].foreGrndColor,
            chapter[index].gradientColor
          ], begin: Alignment.topLeft, end: Alignment.bottomLeft),
          borderRadius:
              const BorderRadius.only(bottomLeft: Radius.circular(70)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              child: Text('Lesson ${index + 1}',
                  style: const TextStyle(
                      fontSize: 15, color: Colors.white, letterSpacing: 2)),
              padding: const EdgeInsets.all(0),
            ),
            const SizedBox(height: 7),
            Container(
              child: Text(chapter[index].chapterName,
                  style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold)),
              padding: const EdgeInsets.all(0),
            )
          ],
        ),
      ),
    );
  }
}
