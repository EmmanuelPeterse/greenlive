import 'package:flutter/material.dart';
import 'package:greenlive/heroplace.dart';

class ViewHero extends StatefulWidget {
   ViewHero({super.key});

  // final myIteme = Items().

  @override
  State<ViewHero> createState() => _ViewHeroState();
}

class _ViewHeroState extends State<ViewHero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child:  Column(
            children: [
              
             ListTile(
              leading: Image(image: AssetImage("assets/images/item/plant0.png")),
              title: Text("plant0"),
              trailing: Icon(Icons.delete),

              onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> HeroPlace(name: "plant0", photo: "assets/images/item/plant0.png")));
              },
            
              
             ),


             const ListTile(
              leading: Image(image: AssetImage("assets/images/item/plant2.png")),
              title: Text("plant2"),
              trailing: Icon(Icons.delete),
              
             ),

             const ListTile(
              leading: Image(image: AssetImage("assets/images/item/plant1.png")),
              title: Text("plant1"),
              trailing: Icon(Icons.delete),
              
             )
            ],
          ),
        ) ),
    );
  }

  
}

// two for hero


