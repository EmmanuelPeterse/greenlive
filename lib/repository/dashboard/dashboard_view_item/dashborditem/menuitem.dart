
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:greenlive/fuction_widget/great_all_item_title.dart';
import 'package:greenlive/fuction_widget/great_title.dart';
import 'package:greenlive/models/itemsmodels.dart';
import 'package:greenlive/repository/dashboard/dashboard_view_item/dashborditem/dashboarditem.dart';
import 'package:greenlive/repository/dashboard/dashboard_view_item/dashborditem/learnitem.dart';



class MenuItem extends StatefulWidget {
  const MenuItem({super.key});

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {



 final bool _changeItemColor1 = false; 



final items = Items.getAllItems();

 



 

// FOR THE SEARCH

late List <Items> _fitreSearche = List.from(items);

void updateSearch( value){
  setState(() {
    _fitreSearche = items.where((element) => element.title.toLowerCase().contains(value.toLowerCase())).toList();
  });
}







void _serchplace(){}



  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  navigationplan1(),

                 Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
                    shape: BoxShape.circle
                  ),
                  margin:  const EdgeInsets.all(20),
                  child:   const FaIcon(FontAwesomeIcons.leaf,color: Colors.greenAccent,),
                 )
                ],
              ),

              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    searchPalce1(),
                  ],
                ),
              ),
            
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 20,right: 2),
                child: Row(
                  
                  children: [
                 
                   GreatItmeTitle(),
                   const GreatAllitemTitle()

                  ],
                  
                ),
              ),



              



                Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                  // CONTAINER

                  SingleChildScrollView(
                    child: Container(
                  
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    margin:  const EdgeInsets.only(top: 2),
                    
                      child:  ListView.builder(
                      itemCount: _fitreSearche.length,
                      itemBuilder: ((context, index) {
                        final item = items[index];
                        return  GestureDetector(
             
                          key: ValueKey(item.id),
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
             
                                  return LearnItems(title: item.title, subtitle: item.subtitle, allInfo: item.allInfo, image: item.images, 
                                  id: '',famille: item.famille, hauteur: item.hauteur, size: item.size, type: item.type, culutre: item.culutre);
                                }));
                              },
                              
                             child: Hero(
                              transitionOnUserGestures: true,
                              tag: item,
                              child: itemPackege(item.images,item.title,item.subtitle)),
                        );
                      
                        
                      }))
                   ),
                 
                  )
                ],
               ),
             
            
              
           

            ]),
        ) ),
    );
  }



// BUTTON DE NAVIGATION

  Widget navigationplan1(){

    return  Container(
              margin: const EdgeInsets.only(left: 20,top: 30,bottom: 15,right: 20),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.greenAccent.withOpacity(0.50)),
                    shape: BoxShape.circle
                  ),
                   child: IconButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const DashboardItem()));
                   }, icon:  const Icon(Icons.navigate_before_outlined,color: Colors.black ,)),
                 ),
                  // Icon(Icons.event_busy,color: Colors.black,)
                ],
              ),
            );
            



  }
 
  // SEARCH PLACE 

   // ignore: non_constant_identifier_names
   Widget searchPalce1(){
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
        
        child: TextField(
          onChanged: (value) => updateSearch(value),
         decoration: const InputDecoration(
          hintText: 'Search',
          suffixIcon: Icon(Icons.search,color: Colors.greenAccent,),
          border: InputBorder.none
         ),
         textAlign: TextAlign.start,
        // onChanged: (value) => _runFiltre(value),
        )),
    );
   }
 
 
// ITHEM

 // ignore: non_constant_identifier_names
 Widget itemPackege(plantItem,titre,info){

  return   Container(
      // height: 100,
      // width:  100,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
      
      color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color:const Color.fromARGB(255, 187, 187, 187) )
    
    ),
    child: Row(

      children: [
        Column(
          children: [

            Container(
              height: 100,
              width: 90,
              margin: const EdgeInsets.only(left: 2),
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(image: AssetImage(plantItem))
              ),
               
            ),

          ],
        ),



        Container(
          height: 100,
          width: 260,
          margin: const EdgeInsets.only(left: 19,),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 187, 187, 187),
            borderRadius: BorderRadius.circular(5)
          ),
          

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
        
              Container(
                margin: const EdgeInsets.all(5),
                child: RichText(text:  TextSpan(
                  children: [
                    
                    TextSpan(
                      text: titre+"\n",
                      style: const TextStyle(color: Color.fromARGB(255, 240, 181, 105),fontSize: 20,), 
              
                    ),
                    TextSpan(
                      text: info+"\n",
                      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 20),
                      
                    ),
              
                  ]
                )),
              ),
                
                  Container(

                    margin: const EdgeInsets.only(left: 2),
                    child: Icon(Icons.star, color: _changeItemColor1? Colors.yellowAccent:Colors.white,size: 30,)),

         


            ],
          ),
        ),
      ],
    ),
  );
 
  
 }

 
}



