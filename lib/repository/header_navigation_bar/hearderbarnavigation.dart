

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:badges/badges.dart'as badges;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:greenlive/connection/pageconnection.dart';

class HearderNavBar extends ConsumerWidget{
  const HearderNavBar({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName: const Text('one'), accountEmail: const Text('email'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset('assets/images/item/randoner_5.jpg',fit: BoxFit.cover,width:90, height: 90 ,)),    
          ),
          decoration: const BoxDecoration(
            color: Colors.greenAccent,
          ),
          ),

          ListTile(
              title: const Text('Connexion'),
              leading:const Icon(Icons.signpost_rounded,color: Color.fromARGB(255, 67, 207, 223),),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> PageConnexion()));},
            ),

             ListTile(
              title: const Text('Favorie'),
              trailing:const badges.Badge(
                badgeContent: Text("8",style: TextStyle(color: Colors.black),)) ,
              leading:const FaIcon(FontAwesomeIcons.star,color: Color.fromARGB(255, 67, 207, 223),),
              onTap: (){},
            ),




            ListTile(
              title: const Text('Call back'),
              leading:const Icon(Icons.email,color: Color.fromARGB(255, 67, 207, 223),),
              onTap: (){},
            ),
           const Divider(height: 3,color: Colors.grey,),

            ListTile(
              title: const Text('Exit'),
              leading:const Icon(Icons.exit_to_app,color: Color.fromARGB(255, 67, 207, 223),),
              onTap: (){},
            ),
           
        ],
        ),
    );
   
  }
}