import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../connectionitem/signing.dart';
import '../controller/login_controller.dart';
class SocialIconButton extends StatefulWidget {
  const SocialIconButton({super.key});

  @override
  State<SocialIconButton> createState() => _SocialIconButtonState();
}

class _SocialIconButtonState extends State<SocialIconButton> {

  final _controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      
        Container(
                      margin: const EdgeInsets.all(30),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 1,
                            width: 100,
                            color: Colors.black12,
                            
                          ),

                    

                    Container(
                      height: 30,
                      width: 30,
                      margin: const EdgeInsets.only(left: 10),
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'O',
                              style: TextStyle(color: Color.fromARGB(255, 237, 173, 89))
                            ),

                            TextSpan(
                              text: 'R',
                              style: TextStyle(color: Color.fromARGB(255, 148, 237, 89))
                            ),
                          ]
                        ),
                      ),
                    ),

                     Container(
                      margin: const EdgeInsets.only(right: 10),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 1,
                            width: 100,
                            color: Colors.black12,
                            
                          )
                        ],
                       ),
                     ),
                        ],
                       ),
                     ),


        Row(
          children: [
            
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        

                        Obx(() {

                          if(_controller.googleAccount.value == null){
                            return bottondevalidation();
                          }
                          else {
                              return  bottondevalidation();
                          }
                        }),



                          const SizedBox(width: 10,),
                          IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.googlePlus,color: Color.fromARGB(255, 255, 21, 21),),),
                          const SizedBox(width: 10,),
                          IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.twitter,color: Color.fromARGB(255, 87, 181, 209),),),
                        ],
                      ),
                    ),

          ],
        ),
        

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> const Signing())),
              child: const Text("are you not account ?",style: TextStyle(color: Colors.black),))
          
          ],
        ),

      
      ],
    );
  }

  

   // BOTTON POUR DE CLANCHER L'AUTHENTIFICATION
   bottondevalidation(){
         return   IconButton(onPressed: (){
                             _controller.login();
                          }, icon: const FaIcon(FontAwesomeIcons.facebook,color: Color.fromARGB(255, 6, 94, 188),),);
  }
}