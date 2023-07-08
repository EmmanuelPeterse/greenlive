
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:greenlive/repository/dashboard/dasboardview.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();


}

class _WelcomePageState extends State<WelcomePage> {

 @override
  void initState() {
    // TODO: implement initState
    super.initState();

  Future.delayed(const Duration(seconds: 3)).then((value) => Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context)=>
     const DashboradView())));
  }

  @override
  Widget build(BuildContext context) {

  

    return Scaffold(
      
     
      body: Container(
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/item/welcome1.png'),fit: BoxFit.fitHeight
          )
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           
            children: [
              
              Container(
                height: 150,
                width: double.infinity,
                alignment: Alignment.bottomLeft,
                child: Column(
                  children: [

                    // Down Screen 

                     logodown(),
                     const SpinKitCircle(
                      color: Colors.orange,
                      size: 12,
                     )
                   ]
                  ),
              ),     
              
               Container(
                height: 70,
                width: double.infinity,
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.only(right: 30),
                child: Column(
                  children: [

                    // Down Screen 
                       next_bottom()
                     
                   ]
                  ),
              ),     
                 
                 

            ],
          ) 
        ),
      )
           

       
      
    );
  }

  // MY  METHODES

   Widget logodown(){

    return          Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                    margin: const EdgeInsets.only(left: 20,bottom: 10,top: 20 ),
                    child: RichText(
                          text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Greenlive\n',
                                        style: TextStyle(color: Color.fromARGB(255, 31, 184, 31),fontWeight: FontWeight.bold,fontSize: 30),
                                      ),
                  
                                      TextSpan(
                                        text: 'we love nature',
                                        style: TextStyle(color: Color.fromARGB(255, 250, 250, 250),fontWeight: FontWeight.bold,fontSize: 18),
                                      ),
                                    ]
                                  )),
                  ),
                        ],
                      );



   }

   
  
  
   // ignore: non_constant_identifier_names
   Widget next_bottom(){
    return  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                      GestureDetector(
                        // onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboradView())),
                       onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashboradView())),

                        child:  Container(
                            height: 50,
                            width: 50,
                            margin: const EdgeInsets.only(left: 23),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const[
                               BoxShadow(
                                color: Color.fromARGB(255, 26, 23, 23),
                                offset: Offset(0,30),
                                blurRadius: 60,
                               )
                              ]

                            ),
                            child: const Icon(Icons.navigate_next_sharp,color: Colors.white,),
                           ),
                      )
                     ],
                   );
                 

   }
}
