import 'package:flutter/material.dart';
import 'package:vitapp/firebasefunctions.dart';

import "StudentHome.dart";
import 'colors.dart' as color;
import "constants.dart";

class request1 extends StatefulWidget {
  const request1({super.key});

  @override
  State<request1> createState() => _request1State();
}

class _request1State extends State<request1> {
  TextEditingController subcontroller = TextEditingController();
  TextEditingController desccontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.standardWhite,
      appBar: AppBar(
       
        backgroundColor: color.AppColor.appbarColor,
        title: Row(
          children: [
              
            Image.asset("assets/VcareIT.png",height:30),
          Text(
            "V",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 0,
          ),
          Text(
            "care",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal
            ),
          ),
          SizedBox(
            width: 0,
          ),
          Text(
            "IT",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          )
          ],
        ),
      ),
     body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      
       child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 120),
              child: Text(
                "Make Request!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20,),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 600,
                decoration: BoxDecoration(
                  color: color.AppColor.standardBlue,
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40, right: 35, left: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Subject",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: color.AppColor.primaryWhiteText
                          ),
                        ),
                        SizedBox(
                          height: 3.5,
                        ),
                        Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.transparent), // You can customize border color here
                    ),
                    child: TextField(
                      controller: subcontroller,
                      decoration: InputDecoration(
                        border: InputBorder.none, // Hide the default border of TextField
                        hintText: 'Enter text...',
                      ),
                    ),
                  ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 18,
                            color: color.AppColor.primaryWhiteText,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                         Container(
                          height: 200,
       
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.transparent), // You can customize border color here
        ),
        child: TextField(
          controller: desccontroller,
          decoration: InputDecoration(
            border: InputBorder.none, // Hide the default border of TextField
            hintText: 'Enter text...',
          ),
        ),
           ),
                        SizedBox(
                          height: 70,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: (){
                              print("happened");
                              addRequestToUserDocument("request", [subcontroller.text,desccontroller.text,"false"]);
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
                              getbasicdet();
                              Navigator.pop(context);
                              Navigator.pop(context);
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                           
                           
                            },
                            child: Container(
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                color: color.AppColor.standardWhite,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: [
                                  Center(
                                    child: Text(
                                      "      Submit Request",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: color.AppColor.primaryBlackText,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            
          ],
        ),
       ),
     ), 
    );
  }
}