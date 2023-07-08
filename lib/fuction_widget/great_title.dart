import 'package:flutter/material.dart';
import 'package:greenlive/myresouce/style.dart';
import 'package:greenlive/repository/dashboard/dashboard_view_item/dashborditem/menuitem.dart';
// ignore: must_be_immutable
class GreatItmeTitle extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuItem())),
      child: titleEsperce1('Nature'),
    );

    


   }

     Widget titleEsperce1(itmeText){
    return Container(
      height: 50,
      width: 80,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 10,top: 20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 235, 188, 163),
        borderRadius: BorderRadius.circular(5),
       
      ),
      child: Text(itmeText,style:subTitleSytle),
    );


   }

    
  }
