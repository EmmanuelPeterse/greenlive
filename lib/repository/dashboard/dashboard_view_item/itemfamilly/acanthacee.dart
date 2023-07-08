import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:greenlive/domain/location.dart';
import 'package:greenlive/repository/dashboard/dashboard_view_item/dashborditem/dashboarditem.dart';
import '../dashborditem/menuitem.dart';
class ItemsAcantacees extends StatefulWidget {
  const ItemsAcantacees({super.key});

  @override
  State<ItemsAcantacees> createState() => _ItemsAcantaceesState();
}

class _ItemsAcantaceesState extends State<ItemsAcantacees> {


   // RECEVE LE LIST TO DO ALL OPERATION








  final locate = Location.fetchAll();



@override
void initState() {
  super.initState();
  
}



void _runFiltre( enteredKeyword){

 // ignore: unused_local_variable
 late List <Location> _resultat = [];

 if(enteredKeyword.isEmpty){
  _resultat = locate;
 }
 else{
  _resultat = locate.where((element) => element.names.toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
 }

 setState(() {
 });

}








  final bool _changeItemColor1 = false;
  @override
  Widget build(BuildContext context) {



 final locations = Location.fetchAll();

 final location = locations;
    


    return  Scaffold(
      
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  navigation_plan1(),

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


                 
             // DO SEARCH PLACE

              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    search_palce1(),
                  ],
                ),
              ),
            
              Container(
                margin: const EdgeInsets.only(left: 20,right: 2),
                child: const Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                





                  ],
                ),
              ),
             
               Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 20),
                    child: ListView.builder(
                      itemCount: location.length,
                      itemBuilder: (context,index) {
                        final itm = location[index];
                        return GestureDetector(
                          child: Hero(
                            tag: location,
                            child: item_packege(itm.imagePath, itm.names,itm.names ),
                          )
                        );
                      }),
                  )
                ],
               )


            //  Column(
            //    mainAxisAlignment: MainAxisAlignment.start,
            //    children: [
            //     // CONTAINER
            //      Container(
            //       height: MediaQuery.of(context).size.height,
            //       width: MediaQuery.of(context).size.width,
            //       margin:  EdgeInsets.only(top: 20),
                  
            //         child:  ListView.builder(
            //         itemCount: _foundPlant.length,
                    
            //         itemBuilder: ((context, index) {
            //           final item = items[index];
            //           return  GestureDetector(

            //             key: ValueKey(item.id),
            //                 onTap:(){
            //                   Navigator.push(context, MaterialPageRoute(builder: (context){

            //                     return LearnItems(title: item.title, subtitle: item.subtitle, allInfo: item.allInfo, image: item.images, 
            //                     id: '',famille: item.famille, hauteur: item.hauteur, size: item.size, type: item.type,);
            //                   }));
            //                 },
                            
            //                child: Hero(
            //                 transitionOnUserGestures: true,
            //                 tag: item,
            //                 child: item_packege(item.images,item.title,item.subtitle)),
            //           );
                    
                      
            //         }
            //       )
            //       )
            //      ),
            //    ],
            //  ),
            
              
           

            ]),
        ) ),
    );
  }


 // NAVIGATION PLACE


  Widget navigation_plan1(){

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

   Widget search_palce1(){
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
         onChanged: (value) => _runFiltre(value),
        )),
    );
   }
 


// ITEM PARKEGE

 Widget item_packege(plantItem,titre, dynamic info){

  return   Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(15),
     decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.3),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black12.withOpacity(0.1),
         
        )
      ]
    ),
    child: Row(

      children: [
        Column(
          children: [

            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
               child: Image.asset(plantItem,width: 100,height: 100,),
            ),

          ],
        ),



        Container(
          
          color: const Color.fromARGB(255, 214, 209, 209),
          margin: const EdgeInsets.only(left: 30,),

          child: Column(
            children: [
        
              Container(
                margin: const EdgeInsets.all(5),
                child: RichText(text:  TextSpan(
                  children: [
                    
                    TextSpan(
                      text: titre,
                      style: const TextStyle(color: Color.fromARGB(255, 240, 181, 105),fontSize: 20,), 
              
                    ),
                  
              
                  ]
                )),
              ),
                
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.star, color: _changeItemColor1? Colors.yellowAccent:Colors.white,size: 30,)),

         


            ],
          ),
        ),
      ],
    ),
  );
 
  
 }




 // ALL NATURE TITLE

  Widget title_esperce1(itmeText){

    return Container(
      height: 50,
      width: 80,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 10,top: 20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 233, 233, 233),
        borderRadius: BorderRadius.circular(5),
       
      ),
      child: Text(itmeText,style: TextStyle(color: const Color.fromARGB(255, 11, 59, 36).withOpacity(0.50),
      fontFamily: 'Roboto-Black.ttf',fontSize: 18),),
    );


   }

 //  ALL ITEM TITLE

  Widget title_itmeContainer1(itmeText){

    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const MenuItem())),
      child: Container(
      height: 50,
      width: 90,
      padding: const EdgeInsets.all( 1),
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 8,top: 20),
      decoration: BoxDecoration(
        color: _changeItemColor1? const Color.fromARGB(255, 184, 105, 62):const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color.fromARGB(255, 184, 105, 62).withOpacity(0.3))
      ),
      child: Text(itmeText,style: TextStyle(color: const Color.fromARGB(255, 11, 59, 36).withOpacity(0.50),
      fontFamily: 'Roboto-Black.ttf',fontSize: 13),),
    )
    );
    
  }


}