import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatefulWidget with PreferredSizeWidget {
  String screenName;
  Color backgroundColorName, titleColor;
  CustomAppbar({required this.screenName, required this.backgroundColorName, required this.titleColor});
  @override
  State<CustomAppbar> createState() => _CustomAppbar();

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _CustomAppbar extends State<CustomAppbar> {
  late String screenName;
  late Color backgroundColorName;
  late Color titleColor;
  @override
  Widget build(BuildContext context) {
    screenName = widget.screenName;
    backgroundColorName = widget.backgroundColorName;
    titleColor = widget.titleColor;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 26, 57, 85), //or set color with: Color(0xFF0000FF)
    ));
    return AppBar(
      iconTheme: const IconThemeData(color: Color.fromARGB(255, 244, 245, 247)),
      title: Text(
        screenName,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(fontSize: 26, color: screenName == 'Courses' ? const Color.fromARGB(255, 244, 245, 247) : Colors.black))
        // style: TextStyle(
        //     fontFamily: "Montserrat-Medium", fontSize: 26, letterSpacing: 2,
        //     color: screenName == 'Courses' ? Colors.white : Colors.black),
      ),
      // titleSpacing: 70,
      centerTitle: true,
      elevation: 0.0,
      toolbarHeight: 60,
      // toolbarOpacity: 1.0,
      backgroundColor: backgroundColorName,
      // backgroundColor: const Color.fromRGBO(49, 87, 110, 1.0),
      // shadowColor: const Color.fromARGB(255, 32, 53, 66),
      // leading: ,
    );
  }
}


// ListView.builder(
//                 itemCount: chapterList.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Container(
//                     child: Text(chapterList[index].chapterName),
//                   );
//                 })

//                 Container(
//         height: 70,
//         decoration: const BoxDecoration(
//         color: Color.fromARGB(255, 143, 37, 83)),
//         child: Container(
//         height: 70,
//         decoration: const BoxDecoration(
//         // color: Color.fromARGB(255, 175, 191, 201)),
//         // color: const Color.fromRGBO(49, 87, 110, 1.0),
//         color: Color.fromARGB(255, 202, 121, 156),
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(70)
//         )),),
//       )