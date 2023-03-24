import 'package:flutter/material.dart';
import 'package:formulae/constants.dart/chapter-names.dart';
import 'package:formulae/constants.dart/routes.dart';
import 'package:formulae/models/chapter_model.dart';
import 'package:formulae/models/sem_chapter_model.dart';
import 'package:formulae/screens/shared/formulae.dart';
import 'package:formulae/screens/shared/custom_appbar.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class ChapterList extends StatefulWidget {
  const ChapterList({Key? key}) : super(key: key);

  @override
  State<ChapterList> createState() => _ChapterListState();
}

class _ChapterListState extends State<ChapterList> {
  // List<ChapterModel> chapterList = [];
  String semSelectedValue = 'Sem I';
  String paperSelectedValue = 'Paper I';

  // List of items in our dropdown menu
  var semList = ['Sem I', 'Sem II'];
  var paperList = ['Paper I', 'Paper II'];

  List<SemChapterModel> paperListData = [];

  List<SemChapterModel> sem1Paper1List = [
    SemChapterModel(chapterName: sem1Paper1Chaptr1),
    SemChapterModel(chapterName: sem1Paper1Chaptr2),
    SemChapterModel(chapterName: sem1Paper1Chaptr3),
    SemChapterModel(chapterName: sem1Paper1Chaptr4),
    SemChapterModel(chapterName: sem1Paper1Chaptr5),
    SemChapterModel(chapterName: sem1Paper1Chaptr6)
  ];

  List<SemChapterModel> sem1Paper2List = [
    SemChapterModel(chapterName: sem1Paper2Chaptr1),
    SemChapterModel(chapterName: sem1Paper2Chaptr2),
    SemChapterModel(chapterName: sem1Paper2Chaptr3),
    SemChapterModel(chapterName: sem1Paper2Chaptr4),
    SemChapterModel(chapterName: sem1Paper2Chaptr5),
    SemChapterModel(chapterName: sem1Paper2Chaptr6)
  ];

  List<SemChapterModel> sem2Paper1List = [
    SemChapterModel(chapterName: sem2Paper1Chaptr1),
    SemChapterModel(chapterName: sem2Paper1Chaptr2),
    SemChapterModel(chapterName: sem2Paper1Chaptr3),
    SemChapterModel(chapterName: sem2Paper1Chaptr4),
  ];

  List<SemChapterModel> sem2Paper2List = [
    SemChapterModel(chapterName: sem2Paper2Chaptr1),
    SemChapterModel(chapterName: sem2Paper2Chaptr2),
    SemChapterModel(chapterName: sem2Paper2Chaptr3),
    SemChapterModel(chapterName: sem2Paper2Chaptr4),
    SemChapterModel(chapterName: sem2Paper2Chaptr5)
  ];

  @override
  void initState() {
    // var x = jsonEncode(sem1Paper1List);
    // print(x);
    paperListData = sem1Paper1List;
    super.initState();
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
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 38, 74, 107)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      // color: Colors.black,
                      padding: const EdgeInsets.only(left: 18, bottom: 5),
                      child: Text(
                        "Lessons",
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(fontSize: 18),
                            color: const Color.fromARGB(255, 235, 238, 245)),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    // SizedBox(height: 10,),
                    Container(
                      // height: MediaQuery.of(context).size.height / 1.14,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(
                        top: 18,
                      ),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 238, 244, 250),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "You can change required Semister and Paper from below",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(fontSize: 12)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Card(
                                child: getSemList(),
                              ),
                              Card(
                                child: getPapperList(),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              itemCount: paperListData.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                    child: getLesson(paperListData, index));
                              })
                        ],
                      ),
                    )
                  ]))),
    ));
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
                    style: const TextStyle(fontSize: 12),
                  ),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  semSelectedValue = value!;
                  getUpdatedData();
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
                    style: const TextStyle(fontSize: 12),
                  ),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  paperSelectedValue = value!;
                  getUpdatedData();
                });
              },
              value: paperSelectedValue,
            ),
          )),
    );
  }

  getUpdatedData() {
    if (semSelectedValue == 'Sem I' && paperSelectedValue == 'Paper I') {
      paperListData = sem1Paper1List;
    } else if (semSelectedValue == 'Sem I' &&
        paperSelectedValue == 'Paper II') {
      paperListData = sem1Paper2List;
    } else if (semSelectedValue == 'Sem II' &&
        paperSelectedValue == 'Paper I') {
      paperListData = sem2Paper1List;
    } else if (semSelectedValue == 'Sem II' &&
        paperSelectedValue == 'Paper II') {
      paperListData = sem2Paper2List;
    }
  }

  Widget getLesson(List<SemChapterModel> chapter, int index) {
    return InkWell(
        onTap: () => navigateToFormulae(chapter[index].chapterName, index + 1),
        child: Container(
          height: 80,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: Card(
              child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ListTile(
                    leading: Text('${index + 1}.',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 38, 74, 107),
                                fontWeight: FontWeight.bold))),
                    title: Text(chapter[index].chapterName,
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 38, 74, 107),
                                fontWeight: FontWeight.bold))),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                  )
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: <Widget>[
                  //     Container(
                  //       child: Text('Lesson ${index + 1}',
                  //           style: GoogleFonts.montserrat(
                  //             textStyle: const TextStyle(fontSize: 12, color: Color.fromARGB(255, 38, 74, 107)))),
                  //       padding: const EdgeInsets.all(0),
                  //     ),
                  //     // const SizedBox(height: 7),
                  //     Container(
                  //       child: Text(chapter[index].chapterName,
                  //           style: GoogleFonts.montserrat(
                  //             textStyle: const TextStyle(
                  //               fontSize: 15,
                  //               color: Color.fromARGB(255, 38, 74, 107),
                  //               fontWeight: FontWeight.bold))
                  //         ),
                  //       padding: const EdgeInsets.all(0),
                  //     )
                  //   ],
                  // )
                  )),
        ));
  }

  navigateToFormulae(String chapterName, int index) {
    Get.to(Formulae(chapterName: chapterName, chapterIndex: index),
        duration: const Duration(seconds: 0, milliseconds: 500),
        transition: Transition.rightToLeft,
        routeName: RoutingNamesConstant.FORMULAE);
  }
}
