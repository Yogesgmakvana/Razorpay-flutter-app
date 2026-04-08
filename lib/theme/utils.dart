import 'package:flutter/material.dart';

//  TextStyle heading1=TextStyle(
//     fontSize: 18,
//  );

TextStyle heading1({
  FontStyle fontstyle = FontStyle.italic,
  double fontSize = 18.0,
  Color headingColors = Colors.yellowAccent,
  FontWeight fontweight = FontWeight.bold,
  double letterSpacing = 18,
  TextBaseline textBaseline = TextBaseline.ideographic,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontStyle: fontstyle,
    letterSpacing: letterSpacing,
    textBaseline: textBaseline,
  );
}


TextStyle heading5=TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

TextStyle wind({
  double fontSied=18,
  FontWeight Weight=FontWeight.w300,
}){
  return TextStyle(
    fontSize:fontSied,
    fontWeight: Weight,
  );
}


TextFormField decorationOfTextField({
double circularBorder=15,
Icon? customIconprefix,
Icon? customIconsufix,
TextEditingController? controllercustom,
}){
  return TextFormField(
    controller: controllercustom,
    validator: (value) => null,
     decoration: InputDecoration(
      prefixIcon: customIconprefix,
      suffixIcon:customIconsufix,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(circularBorder),
      )
     ),
  );
}
