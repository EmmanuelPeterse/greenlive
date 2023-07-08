import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:greenlive/connection/connectionitem/signing.dart';
import 'package:greenlive/repository/dashboard/dasboardview.dart';
import 'package:validation_textformfield/validation_textformfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  // Gryser le champs le button de validation du formaulaire

  final bool _griseValidation = true;

  final  _key = GlobalKey<FormState>();

  final bool _messageError = false;

  late String _receveInputEmail ;


 final bool _changerColor = false;

 void _changervue(){

      setState(() {
        _griseValidation != _griseValidation;
      });
  }








  @override
  Widget build(BuildContext context) {


   



    return Scaffold(
      body: Container(
         margin: const EdgeInsets.all(20),
         alignment: Alignment.center,
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
              formulaire_header1(),
              formulaire1()

            ],

          ),
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
  

   // FORMULAIRE HEADER 1
   
  Widget formulaire_header1(){

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


  // FORMULAIRE 1
   
   Widget formulaire1(){

    return Form(
                key: _key,
                  child: Column(
                  
                    children: [
                       Container(
                         margin: const EdgeInsets.all(10),
                         child:EmailValidationTextField(
                          validatorMassage: _messageError? 'ok': 'require @',
                          whenTextFieldEmpty: 'adresse email',
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
                                
                                // fontion 

                                onChanged: (value){
                                  setState(() {
                                    _receveInputEmail = value;

                                    if( _receveInputEmail.trim().isEmpty){
                                      _griseValidation == _griseValidation;
                                      // _changerColor != _changerColor;

                                    }
                                    else{
                                      _griseValidation != _griseValidation;
                                       _changerColor != _changerColor;

                                    }
                            
                                  });
                                },

                         )




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
                            else if(value.length <= 5 ){
                              return 'password is short';
                            }
                            else if(!regExp.hasMatch(value)){
                                return 'require carataire Z 1 @';
                            }
                            else{
                              return null;
                            }
                            
                            
                          }
                          
                          ,
                         )

                         
                            ),
                       
                   
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [

                            // FORGET PASSEWORD
                       
                         Container(
                            child: TextButton(onPressed: (){},
                             child: const Text("forgot password",style: TextStyle(color: Colors.black)))
                          ),

                          // VALIDATION BUTTON
                         
                        GestureDetector(
                          onTap:// _griseValidation?
                          ()
                          {

                        if(_key.currentState!.validate()){

                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return DashboradView();
                            }));
                          });
                        }
               
                          },//:null,
                          child: Container(
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


                          
                         // CONNECTION VIA SERVICE WEB

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
                        TextButton(onPressed:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> const Signing())),
                           child: const Text("are you not account ?",style: TextStyle(color: Colors.black),))
                      
                      ],
                    ),
 
                   
                   
                    
                    ],
                  )
                );
       
  } 

  

}