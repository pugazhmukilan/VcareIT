import 'package:flutter/material.dart';

import 'colors.dart' as color;

class request_detailsState extends StatefulWidget {
  late String sub;
  late String desc;
  late String symp;
  late String name;
  late String regno;
  late String hostel;
  late String approved;
  request_detailsState({super.key, required this.sub, required this.desc, required this.symp, required this.name,required this.hostel,required this.approved, required this.regno});

  @override
  State<request_detailsState> createState() => _request_detailsStateState(sub:sub, desc: desc,symp: symp,hostel: hostel, name: name,regno: regno ,approved:approved);
}

class _request_detailsStateState extends State<request_detailsState> {

  late String sub;
  late String desc;
  late String symp;
  late String name;
  late String regno;
  late String hostel;
  late String approved;

  _request_detailsStateState({ required this.sub, required this.desc,required this.symp, required this.hostel,required this.approved, required this.name, required this.regno});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.standardWhite,
      appBar: AppBar(
        backgroundColor: color.AppColor.appbarColor,
        title: Row(
          children: [
              
            Image.asset("assets/VcareIT.png",height: 40,),
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
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            if (approved== "false")
              Text("NOT APPROVED",style: TextStyle(fontWeight: FontWeight.w800,color:Colors.red,fontSize: 20),),
            
            if (approved == "true")
            Text("APPROVED",style: TextStyle(fontWeight: FontWeight.w800,color:Colors.green,fontSize: 20),),


            
            
            Padding(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 600,
                decoration: BoxDecoration(
                color: color.AppColor.standardBlue,
                borderRadius: BorderRadius.circular(40)
              ),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        symp,
                        style: TextStyle(
                          color: color.AppColor.primaryBlackText,
                          fontSize: 35,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        name,
                        style: TextStyle(
                          color: color.AppColor.primaryWhiteText,
                          fontSize: 20,
                          fontWeight: FontWeight.normal
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        regno,
                        style: TextStyle(
                          color: color.AppColor.primaryWhiteText,
                          fontSize: 20,
                          fontWeight: FontWeight.normal
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        hostel,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: color.AppColor.primaryBlackText
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 240),
                        child: Text(
                          "Subject",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: color.AppColor.primaryWhiteText
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.5,
                      ),
                      Container(
                        height: 35,
                        width: 300,
                        decoration: BoxDecoration(
                          color: color.AppColor.primaryWhiteText,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 8, left: 10),
                          child: Text(
                            sub,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: color.AppColor.primaryBlackText
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 18,
                            color: color.AppColor.primaryWhiteText,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.5,
                      ),
                      Container(
                        height: 150,
                        width: 300,
                        decoration: BoxDecoration(
                          color: color.AppColor.primaryWhiteText,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Text(
                            desc,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: color.AppColor.primaryBlackText
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 35,),
                    
                    ],
                  
                  ),
                ),
              ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}