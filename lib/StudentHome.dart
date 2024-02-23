import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:vitapp/Loginpage.dart';
import 'package:vitapp/firebasefunctions.dart';
import 'package:vitapp/request_details.dart';

import "constants.dart";
import "request_page.dart";
int currentIndex = 0;
List<dynamic> request=[];
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState(){
    super.initState();
    getbasicdet();
    
  }
  void getbasicdet()async{
    UserName = await getUserName(UserID);
    Regno = await getFieldFromUserDocument("regno");
    setState(() {
      
    });
        // Call getFieldFromUserDocument and assign the result to request
    // Call getFieldFromUserDocument and assign the result to request
    request = await getFieldFromUserDocument("request");
    setState(() {
      
    });
    Hostel = await getFieldFromUserDocument("hostel");
    Phonenumber = await getFieldFromUserDocument("phonenumber");

      // Use request
      if (request != null) {
        // Do something with the list
        print("REQUEST IS==========================$request");
        // Access elements of the listN
        
        }
        else{
          print("NOTHINGGGGGG INSIDE THE REQUEST");
        }


        setState(() {
      // Update the state variables once data fetching completes
      // This triggers a rebuild of the UI with the fetched data
      UserName = UserName;
      Regno = Regno;
      request = request;
      Hostel = Hostel;
    });
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,


      drawer: Drawer(
        width:200,
        
        backgroundColor: Colors.blue,
        
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                /*borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                bottomRight: Radius.circular(20))*/
              ),
              child: Text(
                'Students Details',
                style:TextStyle(fontWeight: FontWeight.w500,color:Colors.white,fontSize: 25)
              ),
            ),
            ListTile(
              
              title: Column(
                children: [
                  Text("NAME",style: Kcommontextstyle,),
                  Text(UserName,style:TextStyle(fontFamily: "MajorMonoDisplay",color:Colors.white,fontSize: 15)),
                ],
              ),
             
            ),
            ListTile(
              
              title: Column(
                children: [
                  Text("Regno",style:Kcommontextstyle),
                  Text(Regno,style: TextStyle(fontFamily: "MajorMonoDisplay",color:Colors.white,fontSize: 15),),
                ],
              ),
              
            ),
            ListTile(
              
              title: Column(
                children: [
                  Text("HOSTEL",style:Kcommontextstyle),
                  Text(Hostel,style: TextStyle(fontFamily: "MajorMonoDisplay",color:Colors.white,fontSize: 15),),
                ],
              ),
              
            ),
            ListTile(
              
              title: Column(
                children: [
                  Text("PHONE NUMBER",style:Kcommontextstyle),
                  Text(Phonenumber,style: TextStyle(fontFamily: "MajorMonoDisplay",color:Colors.white,fontSize: 15),),
                ],
              ),
              
            ),
            SizedBox(
              height: 50,
            ),
            ListTile(
              
              title: Container(
                
                decoration: BoxDecoration(color:const Color.fromARGB(255, 3, 100, 179),borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
                        
                  
                      }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                  
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
                        
                      }, child: Text("Sign out",style:TextStyle(fontWeight: FontWeight.w300,color:Colors.white)))
                    ],
                  ),
                ),
              ),
              
            ),
            // Add more ListTile items as needed
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: AvatarGlow(
        glowRadiusFactor: 0.5,
        animate: true,
        glowColor: Colors.blue,
        repeat: true,
        glowCount: 1,
        child: GestureDetector(
          onTapDown: (details)  {
            
            Navigator.push(context, MaterialPageRoute(builder: (context)=>request1()));
            
           
          },
        
          
          
          
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 30,
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ),
      ),


      backgroundColor: Kmainboard,
      bottomNavigationBar:BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        backgroundColor: Kbackgroundcolor,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        selectedFontSize: 12,
        unselectedFontSize: 10,
        selectedIconTheme: IconThemeData(size:22),

        items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home",),
           
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label:"Accounts"),
          ],
        currentIndex: currentIndex,
        onTap: (int newIndex){
          setState(() {
            currentIndex=newIndex;
            print("index is equal to+++++++ ${currentIndex}");
            if (currentIndex ==0){
              print("hello 0");

            }
           
            
            else if (currentIndex == 1){
              //THIS  PPAGE IS UNDER THE CONSTRUCTION AND BOTTOM POO BOX WILL COME
              print("hello");
              _scaffoldKey.currentState?.openDrawer();
            }

          },);


           shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
      );

          

        },
       
       ) ,




      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 201, 231, 255),
        automaticallyImplyLeading: false,
        title:Row(
        children: [
          Image.asset("assets/VcareIT.png",height:30),
          Text("VcareIT",style:Kcommontextstyle),
        ],
      ),),
      body:Padding(
        padding: const EdgeInsets.only(top:20),
        child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics:BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(right:20,left:20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          
            //HEADER HEADER HEADER
            children: [
          
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Expanded(
                    flex:3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         
                          AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                       "Welcome...\u{1F44B}",
                        cursor: ".",
                        textStyle: Kcommontextstyle,
                        speed: const Duration(milliseconds: 100),
                      ),
                ],
                
                
                        ),
                          //Text("Welcome...\u{1F44B}",style:Kcommontextstyle),
                          Text(UserName,style:TextStyle(fontSize:30,fontWeight: FontWeight.w500,color: const Color.fromARGB(255, 255, 206, 81)),),
                          Text(Regno , style: TextStyle(fontSize:15,fontWeight: FontWeight.w300,color: Colors.black),),
                          Divider(

                          ),
                            
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Color.fromARGB(255, 234, 234, 234),
                      
                    ),
                  )
                ]
          
          
          
              ),
              
              Padding(
                padding: const EdgeInsets.only(top:50),
                child: Text("Your Recent request!!",style:Kcommontextstyle),
              ),
              Divider(),
              

              GestureDetector(
                onTap: (){
                  getbasicdet();
                  setState(() {
                    
                  });
                  setState(() {
                    
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>request_detailsState(sub:request[0].toString(), desc: request[1].toString(), symp: request[0].toString(), name: UserName, hostel: Hostel, regno: Regno,approved:request[2].toString())));
                  

                },
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(color: const Color.fromARGB(255, 93, 182, 255),borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex:2,
                          child: CircleAvatar(
                            radius:30,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        
                    
                        Expanded(
                          flex:3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(request[0].toString(),style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                                Text(UserName,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color:Colors.white),),
                                Text(Regno),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex:2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Hostel"),
                                Text(Hostel,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                                
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              ]
              
              ))),
      )
    );
  }
}

 