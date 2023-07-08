import 'package:flutter/material.dart';
import 'package:greenlive/myresouce/style.dart';
import 'package:greenlive/repository/dashboard/dashboard_view_item/dashborditem/menuitem.dart';


class GreatAllitemTitle extends StatefulWidget {
   const GreatAllitemTitle({super.key,});
  




  @override
  State<GreatAllitemTitle> createState() => _GreatAllitemTitleState();
}

class _GreatAllitemTitleState extends State<GreatAllitemTitle> {


  
  @override
  Widget build(BuildContext context) {



   
    return Row(
      children: [
           
           GestureDetector(
                 onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const MenuItem())),
                 child:titleItmeContainer('Humide'), 
             ),

            GestureDetector(
                 onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const MenuItem())),
                 child:titleItmeContainer('Sun'), 
             ),

             GestureDetector(
                 onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const MenuItem())),
                 child:titleItmeContainer('Place'), 
             ), 



      

      ],
    );
  }  


   Widget titleItmeContainer(itmeText){

    return Container(
      height: 50,
      width: 90,
      padding: const EdgeInsets.all( 1),
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 8,top: 20),
      decoration: BoxDecoration(
        // color: Color.fromARGB(255, 239, 138, 83),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color.fromARGB(255, 184, 105, 62).withOpacity(0.3))
      ),
      child: Text(itmeText,style: subTitleSytle),
    );
    

}

}



