import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

commonLightPurple() {
  return const Color.fromRGBO(205, 180, 219, 1);
}

commonLightYellow() {
  return const Color.fromRGBO(141, 153, 174, 1);
}

commonLightPink() {
  return const Color.fromRGBO(255, 200, 221, 1);
}

commonLightPink2() {
  return const Color.fromRGBO(255, 175, 204, 1);
}

commonLightBlue() {
  return const Color.fromRGBO(162, 210, 255, 1);
}

commonLightBlack() {
  return const Color.fromRGBO(61, 64, 91, 1);
}

commonGrey() {
  return const Color.fromRGBO(61, 64, 91, 1);
}

commonLightBlueShade() {
  return const Color.fromRGBO(189, 224, 254, 1);
}

commonWhite() {
  return const Color.fromRGBO(255, 200, 221, 1);
}

commonBlue() {
  return const Color.fromRGBO(90, 119, 216, 1);
}

commonPurple() {
  return const Color.fromRGBO(90, 119, 216, 1);
}

boxDecorationFormBorder() {
  return InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
    fillColor: Colors.white,
    filled: true,
  );
}

boxDecorationShadow() {
  InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
    hintText: 'Name',
    fillColor: Colors.white,
    filled: true,
    prefixIcon: const Icon(Icons.person_add),
  );
}

boxDecorationContainer() {
  return BoxDecoration(
      shape: BoxShape.rectangle,
      color: Color.fromRGBO(205, 180, 219, 1),
      borderRadius: BorderRadius.circular(160.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5,
        )
      ]);
}

boxDecorationContainerTwo() {
  return BoxDecoration(
      shape: BoxShape.rectangle,
      color: const Color.fromRGBO(162, 210, 255, 1),
      borderRadius: BorderRadius.circular(15.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5,
        )
      ]);
}

elevatedButtonStyle() {
  return ElevatedButton.styleFrom(
    primary: Colors.deepPurple,
    padding: EdgeInsets.all(10),
    textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
  );
}

buttonShape() {
  return MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.red)));
}

buttonStyle() {
  return ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      )));
}

boxDecorationButton() {
  return BoxDecoration(
      shape: BoxShape.circle,
      color: Color.fromRGBO(244, 241, 222, 1),
      // borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5,
        )
      ]);
}

boxDecorationButtonContainer() {
  return BoxDecoration(
      shape: BoxShape.rectangle,
      color: const Color.fromRGBO(61, 64, 91, 1),
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5,
        )
      ]);
}

boxDecorationDeleteButton() {
  return const BoxDecoration(
      shape: BoxShape.circle,
      color: Color.fromARGB(255, 233, 134, 134),
      // borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 1,
        )
      ]);
}

textStyleHead() {
  return GoogleFonts.poppins(
    textStyle: TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
      fontWeight: FontWeight.w700,
      fontSize: 20,
    ),
  );
}

textStyleBody() {
  return GoogleFonts.poppins(
    textStyle: TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
      fontWeight: FontWeight.w700,
      fontSize: 15,
    ),
  );
}

textStyleHomeHead() {
  return GoogleFonts.aBeeZee(
    textStyle: TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontWeight: FontWeight.w900,
      fontSize: 20,
    ),
  );
}

boxDecorationStatusContainer() {
  return BoxDecoration(
      shape: BoxShape.rectangle,
      color: Color.fromRGBO(43, 45, 66, 1),
      borderRadius: BorderRadius.circular(100.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5,
        )
      ]);
}
