

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:badges/badges.dart'as badges;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:greenlive/connection/controller/login_controller.dart';
import 'package:greenlive/connection/pageconnection.dart';
import 'package:url_launcher/url_launcher.dart';

class HearderNavBar extends ConsumerWidget{
   HearderNavBar({super.key});

  final Uri _uri = Uri.parse('https://blackligth965.wixsite.com/emmanuelpeters');
  final Uri _uri1 = Uri.parse('mailto:blacklight965@gmail.com');
  



  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final _controller = Get.put(LoginController());

    

    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
           accountName:  Text(_controller.googleAccount.value?.displayName?? ''),
           accountEmail: Text(_controller.googleAccount.value?.email?? ''),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network(_controller.googleAccount.value?.photoUrl?? '',fit: BoxFit.cover,width:90, height: 90 ,)),    
          ),
          decoration: const BoxDecoration(
            color: Colors.greenAccent,
          ),
          ),

          ListTile(
              title: const Text('Connexion'),
              leading:IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageConnexion()));
              }, icon: Icon(Icons.signpost_rounded,color: Color.fromARGB(255, 67, 207, 223),),)
            ),

         

             ListTile(
              title: const Text('Favorie'),
              trailing:const badges.Badge(
                badgeContent: Text("8",style: TextStyle(color: Colors.black),)) ,
              leading: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.star,color: Color.fromARGB(255, 67, 207, 223),),)
              
            ),
           
      
            ListTile(
              title: const Text('Call back'),
              leading: IconButton(onPressed: urlLuancher1, icon: Icon(Icons.email,color: Color.fromARGB(255, 67, 207, 223),),),

              onTap: (){},
            ),
          
            ListTile(
              title:  Text('About us'),
              leading: IconButton(onPressed: urlLuancher, icon: Icon(Icons.account_circle,color: Color.fromARGB(255, 67, 207, 223),),),
              
            ),
          
           const Divider(height: 3,color: Colors.grey,),

            ListTile(
              title: const Text('Exit'),
              leading: IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app,color: Color.fromARGB(255, 255, 41, 41),),)
             
            ),
           
        ],
        ),
    );
   
  }

  Future<void> urlLuancher()async{
    if(!await launchUrl(_uri)){
      throw Exception('Url invalide $_uri');
    }
  }


   Future<void> urlLuancher1()async{
    if(!await launchUrl(_uri1)){
      throw Exception('Url invalide $_uri1');
    }
  }


}