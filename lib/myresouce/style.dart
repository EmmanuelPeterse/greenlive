import 'package:flutter/material.dart';


// DEFALUTE TEXT SIZE

const largeTextSize = 21.0;
const meduimTextSize = 19.0;
const  bodyTextSize = 16.0;

const defaultRaduis = 10.0;

// FONT FAMILY
const String  textTileFamily = 'Schyler';



// LARGE TEXT TITILE STYLE
const bigTextTitleStyle =  TextStyle(
  fontFamily: textTileFamily,
  fontSize: largeTextSize,
  fontWeight: FontWeight.w300,
  color: Color.fromARGB(255, 101, 218, 101)
);



// MEDUIM TEXT TITLE STYLE
final subTitleSytle = TextStyle(
  color: const Color.fromARGB(255, 11, 59, 36).withOpacity(0.50),
  fontSize: meduimTextSize,
  fontFamily: textTileFamily,
  fontWeight: FontWeight.w300

  
);

// DEFAULT CONTAINER DECORATION

 final containerDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  border:  Border.all(color:const Color.fromARGB(228, 110, 231, 138))
);





