import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:greenlive/connection/connectionitem/signup.dart';
import 'package:validation_textformfield/validation_textformfield.dart';
import '../../repository/dashboard/dasboardview.dart';

class Signing extends StatefulWidget {
  const Signing({super.key});

  @override
  State<Signing> createState() => _SigningState();
}

class _SigningState extends State<Signing> {

final bool _textEmpty = false;

final _key = GlobalKey<FormState>();

  final bool _griseValidation = true;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
               Container(
             
              child: Row(
                children: [
                  navigation_plan()
                ],
              ),
             ),
            
              formulaire_header(),
              formulaire() 
            ],
          )
        ),
      ),
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
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> DashboradView()));
                   }, icon:  const Icon(Icons.navigate_before_outlined,color: Colors.black ,)),
                 ),
                  // Icon(Icons.event_busy,color: Colors.black,)
                ],
              ),
            );
            


  }
  

  // FORMULAIRE HEADER
   
  Widget formulaire_header(){

    return Container(
      child: Column(
        children: [
        
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
               child: Image.asset("assets/images/item/plant0.png",width: 90,height: 90,fit: BoxFit.cover,),
              ),
            ],
          ),
        
          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: const Text("Login place",style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
            ],
          )
        ],
      ),
    );
  }


  // FORMULAIRE

  Widget formulaire(){

    return Form(
            key: _key,
                  child: Column(
                  
                    children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: const Text('Fulname'),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.grey)
                              ),
                              fillColor: const Color.fromARGB(255, 231, 231, 231),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Color.fromARGB(255, 158, 158, 158))
                              )
                            ),

                               // Function

                               validator: (value) {
                                if(value == null || value.isEmpty){
                                  return 'require fluname';
                                }
                                else{
                                  return null;

                                }
                               },

                             
                                   
                          ),
                        ),
                       
                      
                      Container(
                          margin: const EdgeInsets.all(10),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              label: const Text('Tell'),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.grey)
                              ),
                              fillColor: const Color.fromARGB(255, 231, 231, 231),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Color.fromARGB(255, 158, 158, 158))
                              )
                            ),

                               // Function
                               

                               validator: (value) {

                                 if(value == null || value.isEmpty){
                                   return 'require Tell';
                                 }
                                 else if(value.trim().length < 10){
                                   return 'Tell short require ';
                                  }

                                 else{
                                  return null;
                                 }

                               },

                                   
                          ),
                        ),
                       


                       Container(
                         margin: const EdgeInsets.all(10),
                         child: EmailValidationTextField(
                          validatorMassage: _textEmpty?  null: 'require @',
                          whenTextFieldEmpty: 'require email',
                          decoration: InputDecoration(
                            label: const Text('Email'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.grey)
                            ),
                            fillColor: const Color.fromARGB(255, 231, 231, 231),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Color.fromARGB(255, 158, 158, 158))
                            )
                          ),
                           ),
                       ),



                       Container(
                         margin:  EdgeInsets.all(10),
                         child:  TextFormField(
                          maxLength: 30,
                          obscureText: !_griseValidation,
                          decoration: InputDecoration(
                            fillColor: const Color.fromARGB(255, 231, 231, 231),
                            filled: true,
                             label: Text("Password"),
                             suffixIcon: IconButton(onPressed: _griseValidation?(){}:null, icon: Icon(_griseValidation? Icons.visibility: Icons.visibility_off)),
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Color.fromARGB(255, 158, 158, 158))
                            ),

                          ),
                           validator: (value){

                            dynamic pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[& $!@+£¨^"")])(?=.*?[1-9])';
                            RegExp regExp = new RegExp(pattern);
                            if(value == null || value.isEmpty){
                              return 'require password';
                            }
                            else if(value.trim().length <= 5 ){
                              return 'password is short';
                            }
                            else if(regExp.hasMatch(value)){
                                return 'require carataire Z 1 @';
                            }
                            else{
                              return null;
                            }
                            
                            
                          }

                         ),
                       ),
                   
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       
                            const Text("forgot password"),

                       GestureDetector(
                        onTap: (){
                          setState(() {
                            if(_key.currentState!.validate()){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> DashboradView()));
                            }
                          });
                        },
                        child:   Container(
                          height: 30,
                          width: 70,
                          margin: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 230, 157, 75),
                            border: Border.all(color: const Color.fromARGB(255, 204, 205, 205)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text("valider"),
                    ),

                       )
                    


                       ],
                     ),

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
                      
                  
                  
                    
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.facebook,color: Color.fromARGB(255, 6, 94, 188),),),
                          const SizedBox(width: 10,),
                          IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.googlePlus,color: Color.fromARGB(255, 255, 21, 21),),),
                          const SizedBox(width: 10,),
                          IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.twitter,color: Color.fromARGB(255, 87, 181, 209),),),
                        ],
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> const SignUp())),
                           child: const Text("are you account ?",style: TextStyle(color: Colors.black),))
                      ],
                    ),
 
                   
                   
                   
                    ],
                  )
                );
       
  } 

  
}