import 'package:flutter/material.dart';




double screenWidth = 0;
late String UserName="" ;
late String UserID="";
late String Regno="";
late String Hostel="";
late String Phonenumber="";
String projectName  = "ProjectX";
Color Kquizlinecolor = Color.fromARGB(255, 219, 219, 219);
Color  Kbackgroundcolor = const Color.fromARGB(255, 29, 29, 29);
Color  Ksidebarcolor =  const Color.fromARGB(255, 29, 29, 29);
Color  Kmainboard = Color.fromARGB(255, 255, 255, 255);
Color Kblacktextcolor = const Color.fromARGB(255, 29, 29, 29);
Color Kgreycolor_dark = Color.fromARGB(255, 161, 161, 161);
Color Kgreycolor_light = const Color.fromARGB(255, 242, 246, 249);
Color Kgreylinecolor = const Color.fromARGB(255, 194, 194, 194);
Color Kgreytextcolor = const Color.fromARGB(255, 186, 171, 171);
Color Kprogressbarbackgroundcolor = Color.fromARGB(255, 230, 230, 230);
TextStyle Ktitletextstyle = const TextStyle(fontFamily: "Inter",fontSize: 30,fontWeight: FontWeight.bold);
TextStyle Kcommontextstyle = const TextStyle(fontFamily: "Inter",fontSize: 20,fontWeight:FontWeight.w500);
TextStyle Kresumetextstyle = const TextStyle(fontFamily: "Inter",fontSize: 20,fontWeight:FontWeight.w800,color: Color.fromARGB(255, 104, 103, 103));
TextStyle Kprogressbarnumber = const TextStyle(fontFamily: "Inter",fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black);
TextStyle Kreporttextstyle = const  TextStyle(fontFamily: "Inter",fontWeight: FontWeight.w400,color: Colors.black,fontSize: 23);
TextStyle Kquizcattext = TextStyle(fontFamily: "Inter",fontSize: 25,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 92, 92, 92));
//profile image for the user 
//picking the image from the file using the some modules

BorderRadius KMyborder = BorderRadius.circular(10);


















class ErrorDialog extends StatelessWidget {
  final String title;
  final String content;

  const ErrorDialog({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Kmainboard,
      title: Text(title),
      content: Text(content),
      actions: [
        ElevatedButton(
          child: Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

void showErrorDialog(BuildContext context, String errorMessage,String title) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          title,
          style: TextStyle(color: Colors.red),
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              errorMessage,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.red,
            ),
            child: Text('OK'),
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: Colors.white,
        elevation: 5.0,
      );
    },
  );
}



void _showBottomAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(7.0),
        child: Container(
          child: AlertDialog(
            elevation: 12,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            buttonPadding: EdgeInsets.all(5),
            backgroundColor: Colors.black.withOpacity(0.8),
            alignment: Alignment.bottomCenter,
            title: Text(
              'This page is under construction',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
        ),
      );
},);
}






class ImageFeaturesButton extends StatelessWidget {
  
  late String imagepath;
  late Function() operation;
  ImageFeaturesButton({
   
   required this.imagepath,
   required this.operation,
   
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:operation,
      child: Image.asset(imagepath,height:145)
    );
  }
}


