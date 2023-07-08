import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LearnItems extends StatelessWidget {
  
  const LearnItems({super.key, required this.id,required this.title,
  required this.subtitle,required this.allInfo,required this.image,
   required this.famille,required this.size,required this.hauteur,
    required this.type, required String culutre});
   

   final String id;
   final String title;
   final String subtitle;
   final String allInfo;
   final String image;
   final String famille;
   final String size;
   final String hauteur;
   final String type;
   

     final bool _like = true;
    

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 255, 253, 253),
      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            
            Column(
              children: [

                Hero(tag: 'item', child: navigation_plan(),),

                 // ALL ITEM NAME PLACE 
                 all_item_name(),
                   
 
                 // ITEM PLACE 
                item_size(),


              ],


            ),
               
             // FOR ITEM MORE DESCRIPTION
            Column(
              
              children: [
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 232, 231, 231),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                  ),
                  child: Column(
                    children: [
                      item_size_more_info(),
                      // item_packege1(title)
                    ],
                  ),
                ),
              ],
            ),
            
         
          ],
        ),
        )
      ),
      
    
    );
  }


  // BUTTON DE NAVIGATION : barre de navigation

  Widget navigation_plan(){

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
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> const MenuItem()));
                   }, icon: const  Icon(Icons.navigate_before_outlined,color:  Colors.black ,)),
                 ),
                  // Icon(Icons.event_busy,color: Colors.black,)
                ],
              ),
            );
            


  }
  

  // ITEM NAME PLACE : nom de chaque item

  Widget all_item_name(){

     return  Container(
      margin: const EdgeInsets.only(right: 20),
       child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(title,style: const TextStyle(color: Colors.black,fontSize: 20),),
              
                ],
              ),
     );
  }

  
  // MORPHOLOGIE
 
  Widget item_size(){

   
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            item_size_info(famille,size,hauteur,type)
              
          ],

        ),


          Column(

          children: [

          item_size_plant(),

          ],
        ),
        
      
      ],
    );

    
  }

  // INFORMATION ABOUT PLANT CARACTERISTIC : 


  Widget item_size_info(nom_famille,largeur,hauteur,type){
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20,top: 20,right: 20),
          child: RichText(text: TextSpan(
            children: [
              const TextSpan(
                text: 'Famille      \n',style: TextStyle(color: Colors.black12,fontSize: 21),
              ),
               TextSpan(
                text: nom_famille,style: const TextStyle(color: Colors.black),
              ),
        
            
            ]
          ),
          ),
        ),
        
        
        Container(
          margin: const EdgeInsets.only(left: 20,top: 20,right: 30),
          child: RichText(text: TextSpan(
            children: [
              const TextSpan(
                text: 'Size trom\n',style: TextStyle(color: Colors.black12,fontSize: 21),
              ),
               TextSpan(
                text: largeur,style: const TextStyle(color: Colors.black),
              ),
            ]
          ),
          ),
        ),


        Container(
          margin: const EdgeInsets.only(left: 20,top: 20,right: 30),
          child: RichText(text: TextSpan(
            children: [
              const TextSpan(
                text: 'hauter    \n',style: TextStyle(color: Colors.black12,fontSize: 21),
              ),
               TextSpan(
                text: hauteur,style: const TextStyle(color: Colors.black),
              ),
            ]
          ),
          ),
        ),
        


        Container(
          margin: const EdgeInsets.only(left: 20,top: 20,right: 30),
          child: RichText(text: TextSpan(
            children: [
              const TextSpan(
                text: 'type       \n',style: TextStyle(color: Colors.black12,fontSize: 21),
              ),
               TextSpan(
                text: type,style: const TextStyle(color: Colors.black),
              ),
            ]
          ),
          ),
        )
        
      
      ],
    );
  }
  
  // PLANT : 
  Widget item_size_plant(){
    return Container(
      height: 350,
      width: 250,
      margin: const EdgeInsets.only(right: 5),
      
       child: Image.asset(image,width: 50,height: 50,),
    );
  }


  // MORE INFROMATION PLACE

  Widget item_size_more_info(){

    return SingleChildScrollView(
      child:  Container(
      
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
         
           // AllInffo

         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Description",style: TextStyle(color: Colors.black,fontSize: 20),),
            IconButton(onPressed: (){
            

                   }, icon:   FaIcon( _like? FontAwesomeIcons.heart: FontAwesomeIcons.heart,color:  const Color.fromARGB(255, 198, 43, 43) ,)),
            // 
          ],
         ),

          
           Container(
            margin: const EdgeInsets.all(10),
             child: RichText(
              text: TextSpan(
               children: [
               
                 TextSpan(
                  text: allInfo,
                  
                  style: const TextStyle(color: Color.fromARGB(255, 196, 196, 196))
                  
                )
               ]
             )),
          
           ),

           
             // AllNature

          const  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Orignine",style: TextStyle(color: Colors.black,fontSize: 20),),
            FaIcon(FontAwesomeIcons.map)
          ],
         ),

          Container(
            margin: const EdgeInsets.all(10),
             child: RichText(
              text: const TextSpan(
               children: [
               
           
                 TextSpan(
                  text: 'Lorem ipsum dolor sit amet, consectetur adipiscing'
                  'elit sed do eiusmod tempor incididunt ut labore et dolore'
                  ' magna aliqua enim ad minim veniam, quis nostrud exerci'
                   'tation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                  
                  ,
                  style: TextStyle(color: Color.fromARGB(255, 196, 196, 196))
                  
                )
               ]
             )),
          
           ),






        ],
      ),
    )
 
    );
   
  }

  

}


