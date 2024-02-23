import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:vitapp/Signinpage.dart';

import 'constants.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      backgroundColor: Kmainboard,
        
        body: Center(
          child: Expanded(
            child: Container(
              decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage('assets/loginbg.png'), // Replace with your image asset path
                fit: BoxFit.cover, // Cover the entire container
              ),),
              width:900,
              
              
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    Hero(
                      tag:"vcareit",
                      
                      child: Image.asset("assets/VcareIT.png",height: 180,)),
                    Padding(
                padding: const EdgeInsets.only(bottom: 120),
                child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'VcareIT',
                    cursor: ".",
                    textStyle: const TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 61, 61, 61),
                      
                    ),
                    speed: const Duration(milliseconds: 300),
                  ),
                ],
                
                
                        ),
              ),
                   
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Signinpage(type:"Student Login")));    
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 224, 241, 255),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          
                          child: Padding(
                            padding: const EdgeInsets.only(top:15,bottom:15,left:28,right:28),
                            child: Text("Student login",style: Kcommontextstyle,),
                          )),
                        
                                      
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Signinpage(type:"CareTaker Login")));    
                                       
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 224, 241, 255),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          
                          child: Padding(
                            padding: const EdgeInsets.only(top:15,bottom:15,left:20,right:20),
                            child: Text("CareTaker login",style: Kcommontextstyle,),
                          )),
                        
                                       
                                           ),
                     ),
                  ],
                ),
              ),
            ),
          ),
        )
      
    );
  }
}