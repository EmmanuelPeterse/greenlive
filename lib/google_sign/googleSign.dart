
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:greenlive/connection/connectionitem/signing.dart';
class SignGoogle extends StatefulWidget {
  const SignGoogle({super.key});

  @override
  State<SignGoogle> createState() => _SignGoogleState();
}

class _SignGoogleState extends State<SignGoogle> {
 late Future <FirebaseApp> _firebaseAPP;
 
  bool isLoggedIn = false;
  late String name ;


// INITILISATION DE LA CONSOLE

  @override
  void initState() {
    super.initState();
    _firebaseAPP = Firebase.initializeApp();
  }

  // INITILISATION DE LA FONTION DE DECONNECTION

  void singOut(){
    initState(){
      isLoggedIn = false;
    }
  }

 // FONCTION DE CONNECTION 

 void _googleSingIn() async{

   final googleSignIn = GoogleSignIn();  // MODULE DE CONNCETION
  final signAccount = await  googleSignIn.signIn(); // FLUX DE CONNCECTIOgN

  final googleSignInAccount =  await signAccount?.authentication; // FLUX D'AUTHENTIFICATION

 // FLUX  DE TOKEN POUR 

 final credential = GoogleAuthProvider.credential(
    accessToken:  googleSignInAccount?.accessToken,
    idToken: googleSignInAccount?.idToken,
  );

  
   await FirebaseAuth.instance.signInWithCredential(credential);

     if(FirebaseAuth.instance.currentUser != null) {
      print('Google Authentication Successful');
      print('${FirebaseAuth.instance.currentUser?.displayName} signed in.');
      setState(() {
        isLoggedIn = true;
        name = FirebaseAuth.instance.currentUser?.displayName?? '';   });
    } else {
      print('Unable to sign in');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoogleSign'),
      ),
      body: FutureBuilder(
        future: _firebaseAPP,
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const CircularProgressIndicator();
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isLoggedIn? Text('$name sign in') : const Text(''),
              ElevatedButton(onPressed: (){
                isLoggedIn? singOut(): _googleSingIn();
              }, child: isLoggedIn? const Text('sing out ') : const Text("sing in")),
              // Image.network('')
            ],
          );

      })
      );
    
  }
 }

