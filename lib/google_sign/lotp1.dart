import 'package:greenlive/connection/wiget_connection/Social_iconButton.dart';

import '../connection/connectionitem/signing.dart';
import '../repository/dashboard/dasboardview.dart';
import 'lotp2.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Loginpage extends StatefulWidget {
  Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
         
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                navigation_plan(),
              ],
            )
          ],
         ),
       body: Container(
           
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
               
              

              TextField(
                controller: emailController,
                           decoration: InputDecoration(
                            fillColor: const Color.fromARGB(255, 231, 231, 231),
                            filled: true,
                            label: Text("Email"),
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Color.fromARGB(255, 158, 158, 158))
                            ),
                          ),
              ),
              const SizedBox(height: 10),



              TextField(
                controller: passwordController,
                          decoration: InputDecoration(
                            fillColor: const Color.fromARGB(255, 231, 231, 231),
                            filled: true,
                            label: Text("Password"),
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Color.fromARGB(255, 158, 158, 158))
                            ),
                          ),
              ),

              
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      try {
                        UserCredential userCredential = await FirebaseAuth
                            .instance
                            .signInWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text,
                        );

                        User? user = userCredential.user;
                        print('Signed in: ${user!.uid}');

                        // ignore: use_build_context_synchronously
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Userhomepage()));
                      } catch (e) {
                        print('Sign-in error: $e');
                      }
                    },
                    child: const Text('TEST PLACE'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () async {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                    },
                    child: const Text('valider'),
                  ),
                ],
              ),


              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialIconButton()
                    ],
                  )
                ],
              )

            ],
          ),
       
      )
      
      );
  
    
  }




   // NAVIGATION BAR

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
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const DashboradView()));
                   }, icon:  const Icon(Icons.navigate_before_outlined,color: Colors.black ,)),
                 ),
                  // Icon(Icons.event_busy,color: Colors.black,)
                ],
              ),
            );
            


  }
  





}
