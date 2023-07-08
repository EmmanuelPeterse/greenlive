import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:greenlive/fuction_widget/great_all_item_title.dart';
import 'package:greenlive/fuction_widget/great_title.dart';
import 'package:greenlive/repository/header_navigation_bar/hearderbarnavigation.dart';


class DashboardItem extends StatefulWidget {
  const DashboardItem({super.key});

  @override
  State<DashboardItem> createState() => _DashboardItemState();
}

class _DashboardItemState extends State<DashboardItem> {

  //  final bool _changeItemColor = false;


  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const HearderNavBar(),
      appBar: AppBar(
        // backgroundColor: Colors.greenAccent,
        bottomOpacity: 0.1,
        actions:  [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child:  const Row(
              children:  [
                FaIcon(FontAwesomeIcons.leaf,color: Colors.greenAccent,)
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [

                Container(
                  margin: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
                  child: const Row(
                    children: [

                      Text("Find the perfect plant for \n your home .",
                      style: TextStyle(color: Color.fromARGB(255, 214, 152, 98),fontSize: 20),),
                    ],
                  ),
                ),

                // FOR THE SEARCH PALCE

                Container(
                  margin: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        search_palce()

                    ],
                  ),
                ),
                
               
                // FOR INFORMATION PLACE

                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Row(
                   
                    children: [
                      
                      GreatItmeTitle(),
                      const GreatAllitemTitle(),

                      

                   
                    ],
                  ),
                ),
                   
               
               // FOR EXPLICATION ABOUT APP

                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                       
                       Column(
                        children: [
                          my_image()

                        ],
                       ),

                       Column(
                        children: [

                          my_imge_text()

                        ],
                       )

                    ],
                  ),
                ), 
                 
                
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                       
                       Column(
                        children: [
                          my_imge_text()

                        ],
                       ),

                       Column(
                        children: [

                          my_image1('assets/images/item/plant1.png')

                        ],
                       )

                    ],
                  ),
                )   


              ],
            ),
          ),
        ) ,
      )
      
    );
  }

   // SEARCH PLACE

   Widget search_palce(){
    return Container(
      height: 50,
      width: 350,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 243, 243, 243).withOpacity(0.3),
        border: Border.all(color: const Color.fromARGB(255, 214, 152, 98).withOpacity(0.3)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            offset: const Offset(0,15),
            blurRadius: 50,
            
            
          )
        ]
      ),
      child: Form(
        child: TextFormField(
         decoration: const InputDecoration(
          hintText: 'Search',
          suffixIcon: Icon(Icons.search,color: Colors.greenAccent,),
          border: InputBorder.none
         ),
         textAlign: TextAlign.start,
        )),
    );
   }
 


  Widget  my_image(){

    return Container(
             height: 100,
             width: 150,
             alignment: Alignment.topLeft,
             decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: const BorderRadius.only(topRight: Radius.circular(45000),bottomLeft: Radius.circular(8000),
                             topLeft: Radius.circular(45000), bottomRight: Radius.circular(8000)),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 149, 189, 221).withOpacity(0.3),
                  offset: const Offset(32, 29),
                  blurRadius: 23,
                ),
              ],
             ),
             child: Image.asset('assets/images/item/plant0.png')

    );
  }

 
  Widget  my_image1(picturtwo){
    return Container(
             height: 100,
             width: 150,
             margin: const EdgeInsets.only(right: 10),
             alignment: Alignment.bottomRight,
             decoration: BoxDecoration(
              color:  const Color.fromARGB(255, 248, 182, 146),
              borderRadius: const BorderRadius.only(topRight: Radius.circular(450000),bottomLeft: Radius.circular(80000),
                             topLeft: Radius.circular(45000), bottomRight: Radius.circular(8000)),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 149, 189, 221).withOpacity(0.3),
                  offset: const Offset(32, 29),
                  blurRadius: 23,
                ),
              ],
             ),
             child: Image.asset(picturtwo)

    );
  }
 
  
  Widget  my_imge_text(){
    
    return Container(
             height: 120,
             width: 199,
             margin: const EdgeInsets.only(right: 10,top: 70 ),
             decoration: BoxDecoration(
              color: const Color.fromARGB(255, 232, 232, 232).withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
             ),

             child: RichText(
              text: const TextSpan(
              children: [
                TextSpan(
                  text: 'aloe vera \n',
                  style: TextStyle(color:Color.fromARGB(255, 11, 59, 36),fontSize: 21,fontFamily: 'NotoSans-Black.ttf' )
                ),

                TextSpan(
                  text: 'Lorem ipsum dolor sit amet, cons ectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
                   'quis nostrud exercitation ul laboris lamco nisi ut   exercitation ul laboris    ',
                  style: TextStyle(color:Color.fromARGB(255, 11, 59, 36),fontSize: 17,fontFamily: 'NotoSans-Black.ttf' )
                ),


              ]
             )),

    );
  }


}