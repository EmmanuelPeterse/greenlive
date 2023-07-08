// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:greenlive/repository/dashboard/dashboard_view_item/dashborditem/menuitem.dart';
// import '../../../../models/itemsmodels.dart';
// import '../dashborditem/dashboarditem.dart';
// import '../dashborditem/learnitem.dart';
// import 'acanthacee.dart';
// import 'achariacees.dart';

// class ItemFamile3 extends StatefulWidget {
//   const ItemFamile3({super.key});

//   @override
//   State<ItemFamile3> createState() => _ItemFamile3State();
// }

// class _ItemFamile3State extends State<ItemFamile3> {
//    // RECEVE LE LIST TO DO ALL OPERATION

//  final items = <Items> [

//   Items(id: 1, title: 'image0', subtitle: 'dffg', allInfo: 'fsfd', images: 'assets/images/item/plant0.png',famille: 'famile name',size: '25 cm',hauteur: '300 cm',type: 'Water'),
//   Items(id: 2, title: 'image1', subtitle: 'dffg', allInfo: 'fsfd', images: 'assets/images/item/plant1.png',famille: 'famile name',size: '25 cm',hauteur: '300 cm',type: 'Water'),
//   Items(id: 3, title: 'aloé', subtitle: 'dffg', allInfo: 'fsfd', images: 'assets/images/item/plant2.png',famille: 'famile name',size: '25 cm',hauteur: '300 cm',type: 'Water'),
//   Items(id: 2, title: 'vera', subtitle: 'dffg', allInfo: 'fsfd', images: 'assets/images/item/plant1.png',famille: 'famile name',size: '25 cm',hauteur: '300 cm',type: 'Water'),
//   Items(id: 3, title: 'mande', subtitle: 'dffg', allInfo: 'fsfd', images: 'assets/images/item/plant2.png',famille: 'famile name',size: '25 cm',hauteur: '300 cm',type: 'Water'),
 
//  ];





//   late List<Items> _foundPlant ;

// @override
// void initState() {
//   super.initState();
//   _foundPlant = items;
  
// }



// void _runFiltre( enteredKeyword){

//  // ignore: unused_local_variable
//  late List <Items> _resultat = [];

//  if(enteredKeyword.isEmpty){
//   _resultat = items;
//  }
//  else{
//   _resultat = items.where((element) => element.title.toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
//  }

//  setState(() {
//    _foundPlant = _resultat;
//  });

// }








//   final bool _changeItemColor1 = false;
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
      
//       body: SafeArea(
//         child:SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   navigation_plan1(),

//                  Container(
//                   decoration: BoxDecoration(
//                     color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
//                     shape: BoxShape.circle
//                   ),
//                   margin:  const EdgeInsets.all(20),
//                   child:   const FaIcon(FontAwesomeIcons.leaf,color: Colors.greenAccent,),
//                  )
//                 ],
//               ),


                 
//              // DO SEARCH PLACE

//               Container(
//                 margin: const EdgeInsets.only(top: 30),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     search_palce1(),
//                   ],
//                 ),
//               ),
            
//               Container(
//                 margin: const EdgeInsets.only(left: 20,right: 2),
//                 child: Row(
                  
//                   children: [
                      
                    
//                      GestureDetector(onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>const ItemFamile3())), child: title_esperce1('Nature'),),
//                      GestureDetector(onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>const ItemsAcantacees())), child:  title_itmeContainer1('Acanthacées'),),
//                      GestureDetector(onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>const ItemFamile2())), child:  title_itmeContainer1('Achariacées'),),
//                      GestureDetector(onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>const ItemFamile3())), child: title_itmeContainer1('Adiantacées'),)



//                   ],
//                 ),
//               ),



//              Column(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: [
//                 // CONTAINER
//                  Container(
//                   height: MediaQuery.of(context).size.height,
//                   width: MediaQuery.of(context).size.width,
//                   margin:  EdgeInsets.only(top: 20),
                  
//                     child:  ListView.builder(
//                     itemCount: _foundPlant.length,
                    
//                     itemBuilder: ((context, index) {
//                       final item = items[index];
//                       return  GestureDetector(

//                         key: ValueKey(item.id),
//                             onTap:(){
//                               Navigator.push(context, MaterialPageRoute(builder: (context){

//                                 return LearnItems(title: item.title, subtitle: item.subtitle, allInfo: item.allInfo, image: item.images, 
//                                 id: '',famille: item.famille, hauteur: item.hauteur, size: item.size, type: item.type,);
//                               }));
//                             },
                            
//                            child: Hero(
//                             transitionOnUserGestures: true,
//                             tag: item,
//                             child: item_packege(item.images,item.title,item.subtitle)),
//                       );
                    
                      
//                     }))
//                  ),
//                ],
//              ),
            
              
           

//             ]),
//         ) ),
//     );
//   }


//  // NAVIGATION PLACE


//   Widget navigation_plan1(){

//     return  Container(
//               margin: const EdgeInsets.only(left: 20,top: 30,bottom: 15,right: 20),
//               child:  Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                  Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.greenAccent.withOpacity(0.50)),
//                     shape: BoxShape.circle
//                   ),
//                    child: IconButton(onPressed: (){
//                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const DashboardItem()));
//                    }, icon:  const Icon(Icons.navigate_before_outlined,color: Colors.black ,)),
//                  ),
//                   // Icon(Icons.event_busy,color: Colors.black,)
//                 ],
//               ),
//             );
            



//   }
 


//   // SEARCH PLACE 

//    Widget search_palce1(){
//     return Container(
//       height: 50,
//       width: 350,
//       alignment: Alignment.center,
//       padding: const EdgeInsets.only(left: 30),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5),
//         color: const Color.fromARGB(255, 243, 243, 243).withOpacity(0.3),
//         border: Border.all(color: const Color.fromARGB(255, 214, 152, 98).withOpacity(0.3)),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.4),
//             offset: const Offset(0,15),
//             blurRadius: 50,
            
            
//           )
//         ]
//       ),
//       child: Form(
//         child: TextFormField(
//          decoration: const InputDecoration(
//           hintText: 'Search',
//           suffixIcon: Icon(Icons.search,color: Colors.greenAccent,),
//           border: InputBorder.none
//          ),
//          textAlign: TextAlign.start,
//          onChanged: (value) => _runFiltre(value),
//         )),
//     );
//    }
 


// // ITEM PARKEGE

//  Widget item_packege(plantItem,titre,info){

//   return   Container(
//       height: 150,
//       width: MediaQuery.of(context).size.width,
//       margin: const EdgeInsets.all(15),
//      decoration: BoxDecoration(
//       color: Colors.grey.withOpacity(0.3),
//       borderRadius: BorderRadius.circular(10),
//       boxShadow: [
//         BoxShadow(
//           color: Colors.black12.withOpacity(0.1),
         
//         )
//       ]
//     ),
//     child: Row(

//       children: [
//         Column(
//           children: [

//             Container(
//               height: 100,
//               width: 100,
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(10))
//               ),
//                child: Image.asset(plantItem,width: 100,height: 100,),
//             ),

//           ],
//         ),



//         Container(
          
//           color: const Color.fromARGB(255, 214, 209, 209),
//           margin: const EdgeInsets.only(left: 30,),

//           child: Row(
//             children: [
        
//               Container(
//                 margin: const EdgeInsets.all(5),
//                 child: RichText(text:  TextSpan(
//                   children: [
                    
//                     TextSpan(
//                       text: titre+"\n",
//                       style: const TextStyle(color: Color.fromARGB(255, 240, 181, 105),fontSize: 20,), 
              
//                     ),
//                     TextSpan(
//                       text: info+"\n",
//                       style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 20),
                      
//                     ),
              
//                   ]
//                 )),
//               ),
                
//                   Container(
//                     margin: const EdgeInsets.only(left: 20),
//                     child: Icon(Icons.star, color: _changeItemColor1? Colors.yellowAccent:Colors.white,size: 30,)),

         


//             ],
//           ),
//         ),
//       ],
//     ),
//   );
 
  
//  }




//  // ALL NATURE TITLE

//   Widget title_esperce1(itmeText){

//     return Container(
//       height: 50,
//       width: 80,
//       alignment: Alignment.center,
//       margin: const EdgeInsets.only(right: 10,top: 20),
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 233, 233, 233),
//         borderRadius: BorderRadius.circular(5),
       
//       ),
//       child: Text(itmeText,style: TextStyle(color: const Color.fromARGB(255, 11, 59, 36).withOpacity(0.50),
//       fontFamily: 'Roboto-Black.ttf',fontSize: 18),),
//     );


//    }

//  //  ALL ITEM TITLE

//   Widget title_itmeContainer1(itmeText){

//     return GestureDetector(
//       onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const MenuItem())),
//       child: Container(
//       height: 50,
//       width: 90,
//       padding: const EdgeInsets.all( 1),
//       alignment: Alignment.center,
//       margin: const EdgeInsets.only(right: 8,top: 20),
//       decoration: BoxDecoration(
//         color: _changeItemColor1? const Color.fromARGB(255, 184, 105, 62):const Color.fromARGB(255, 255, 255, 255),
//         borderRadius: BorderRadius.circular(5),
//         border: Border.all(color: const Color.fromARGB(255, 184, 105, 62).withOpacity(0.3))
//       ),
//       child: Text(itmeText,style: TextStyle(color: const Color.fromARGB(255, 11, 59, 36).withOpacity(0.50),
//       fontFamily: 'Roboto-Black.ttf',fontSize: 13),),
//     )
//     );
    
//   }


// }