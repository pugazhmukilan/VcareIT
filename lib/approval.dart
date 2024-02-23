import 'package:flutter/material.dart';

import 'colors.dart' as color;
 class approval extends StatefulWidget {
  late String approv;
  late String sub;
  late String desc;
  late String name;
  
  late String regno;
  late String hostel;
  approval({super.key, required this.approv, required this.sub, required this.desc,required this.name,required this.regno,required this.hostel});

  @override
  State<approval> createState() => _approvalState(approv:approv, sub: sub, desc: desc,name:name,regno:regno,hostel:hostel);
}

class _approvalState extends State<approval> {

  late String approv;
  late String sub;
  late String desc;
  late String name;
  
  late String regno;
  late String hostel;
  _approvalState({required this.approv, required this.sub, required this.desc,required this.name,required this.regno,required this.hostel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.standardWhite,
      appBar: AppBar(
        backgroundColor: color.AppColor.appbarColor,
        title: Row(
          children: [
              Padding(
              padding: EdgeInsets.only(),
              child: Icon(
                Icons.arrow_back,
                size: 20,
                color: color.AppColor.primaryBlackText,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Image(
                image: AssetImage('assets/VcareITlogo.png'),
                width: 40,
                height: 30,
              ),
            ),
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
            Padding(
              padding: const EdgeInsets.only( top: 50),
              child: Text(
                approv,
                style: TextStyle(
                  color: color.AppColor.acceptGreen,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 550,
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
                        "High Fever",
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
                        "Jotham Cheeran",
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
                        "22BCE8358",
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
                        "MH3",
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
                          padding: const EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            sub,
                            style: TextStyle(
                              color: color.AppColor.primaryBlackText,
                              fontSize: 15,
                              fontWeight: FontWeight.normal
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
                        height: 100,
                        width: 300,
                        decoration: BoxDecoration(
                          color: color.AppColor.primaryWhiteText,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            desc,
                            style: TextStyle(
                              fontSize: 15,
                              color: color.AppColor.primaryBlackText,
                              fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 31),
                        child: Text(
                          "Your Request got approved kindly wait near the hostel entrance for your ambulance",
                          style: TextStyle(
                            color: color.AppColor.primaryWhiteText,
                            fontSize: 17,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}