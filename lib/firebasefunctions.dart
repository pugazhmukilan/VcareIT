import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Loginpage.dart';
import "constants.dart";
import "main.dart";
Future<String> getCurrentUserEmail() async {
  try {
    // Get the current user from FirebaseAuth
    User? user = FirebaseAuth.instance.currentUser;

    // Check if the user is signed in
    if (user != null) {
      // Return the email of the current user
      return user.email!;
    } else {
      // User is not signed in
      print('User is not signed in.');
       // ignore: null_check_always_fails
      return null!;
    }
  } catch (error) {
    // Handle any errors that might occur
    print('Error getting current user email: $error');
    // ignore: null_check_always_fails
    return null!;
  }
}

Future<void> addDocument(String collectionName, String userID,String userName) async {
  try {
    // Get the Firestore instance
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Reference to the collection
    CollectionReference collectionReference = firestore.collection(collectionName);

    // Create a map with specified fields initialized to null
    Map<String, dynamic> data = {
      'UserName': userName,
      'DBdate': null,
      'DBmonth': null,
      'DByear': null,
      'DBintro': null,
      'DBexperience': null,
      'DBeducation': null,
      'DBskills': null,
      'DBimage': null,
      'DBlanguage': null,
    };

    // Add the document with specified fields and user-defined document name
    await collectionReference.doc(userID).set(data);

    print('Document added successfully to $collectionName with UserName: $userName');
  } catch (error) {
    print('Error adding document: $error');
  }
}



Future<String> getUserName(String userID) async {
  try {
    // Reference to the Users collection
    CollectionReference usersCollection = FirebaseFirestore.instance.collection('Student');

    // Reference to the specific document using the provided UserID
    DocumentReference userDocument = usersCollection.doc(userID);

    // Get the document snapshot
    DocumentSnapshot snapshot = await userDocument.get();

    // Explicitly specify the type for snapshot.data
    Map<String, dynamic>? data = snapshot.data() as Map<String, dynamic>?;

    // Check if the document exists and contains the UserName field
    if (snapshot.exists && data != null && data.containsKey('name')) {
      // Return the value of the UserName field
      return data['name'];
    } else {
      print('Document or UserName field not found for UserID: $userID');
      return null!;
    }
  } catch (error) {
    print('Error getting UserName: $error');
    return null!;
  }
}

Future<String> getUserNameCareTaker(String userID) async {
  try {
    // Reference to the Users collection
    CollectionReference usersCollection = FirebaseFirestore.instance.collection('CareTaker');

    // Reference to the specific document using the provided UserID
    DocumentReference userDocument = usersCollection.doc(userID);

    // Get the document snapshot
    DocumentSnapshot snapshot = await userDocument.get();

    // Explicitly specify the type for snapshot.data
    Map<String, dynamic>? data = snapshot.data() as Map<String, dynamic>?;

    // Check if the document exists and contains the UserName field
    if (snapshot.exists && data != null && data.containsKey('name')) {
      // Return the value of the UserName field
      return data['name'];
    } else {
      print('Document or UserName field not found for UserID: $userID');
      return null!;
    }
  } catch (error) {
    print('Error getting UserName: $error');
    return null!;
  }
}



void signOut(BuildContext context) async {

  try {
    // Sign out from Firebase
    prefs!.remove('email');
    prefs!.remove('password');
    await FirebaseAuth.instance.signOut();
    print("User signed out");

    // Navigate back to the previous screen
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
  } catch (e) {
    print("Error signing out: $e");
    // Handle the error, if any
  }
}


Future<void> addFieldToUserDocument( String fieldName, String content) async {
  try {
    // Get the Firestore instance
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Reference to the "Users" collection
    CollectionReference usersCollection = firestore.collection("Users");

    // Reference to the specific user document
    DocumentReference userDocument = usersCollection.doc(UserID);

    // Update the document with the new field and content
    await userDocument.update({
      fieldName: content,
    });

    print('Field $fieldName added to user document with ID $UserID');
  } catch (error) {
    print('Error adding field to user document: $error');
  }
}

Future<dynamic> getFieldFromUserDocument(String fieldName) async {
  print("============================================="+UserID);
  try {
    // Get the Firestore instance
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Reference to the "Users" collection
    CollectionReference usersCollection = firestore.collection("Student");

    // Reference to the specific user document
    DocumentReference userDocument = usersCollection.doc(UserID);

    // Get the snapshot of the user document
    DocumentSnapshot documentSnapshot = await userDocument.get();

    // Check if the document exists and contains the specified field
    if (documentSnapshot.exists && documentSnapshot.data() != null) {
      Map<String, dynamic> userData = documentSnapshot.data() as Map<String, dynamic>;

      // Check if the field exists in the document
      if (userData.containsKey(fieldName)) {
        dynamic fieldValue = userData[fieldName];
           
        print('Field $fieldName retrieved from user document with ID $UserID: $fieldValue');
        if (fieldName == "request"){
          print("RETURNING AS A LIST");
          return fieldValue;
        }    
        return fieldValue.toString(); // Assuming the field value is a String
      } else {
       
        print('Field $fieldName does not exist in user document with ID $UserID');
        return null!;
      }
    } else {
      
      print('User document with ID $UserID does not exist');
      return null!;
    }
  } catch (error) {
    print('Error getting field from user document: $error');
    return null!;
  }
}

Future<String> getFieldFromUserDocumentforhostel(String fieldName) async {
  print("============================================="+UserID);
  try {
    // Get the Firestore instance
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Reference to the "Users" collection
    CollectionReference usersCollection = firestore.collection("CareTaker");

    // Reference to the specific user document
    DocumentReference userDocument = usersCollection.doc(UserID);

    // Get the snapshot of the user document
    DocumentSnapshot documentSnapshot = await userDocument.get();

    // Check if the document exists and contains the specified field
    if (documentSnapshot.exists && documentSnapshot.data() != null) {
      Map<String, dynamic> userData = documentSnapshot.data() as Map<String, dynamic>;

      // Check if the field exists in the document
      if (userData.containsKey(fieldName)) {
        dynamic fieldValue = userData[fieldName];
        
        print('Field $fieldName retrieved from user document with ID $UserID: $fieldValue');
        return fieldValue.toString(); // Assuming the field value is a String
      } else {
       
        print('Field $fieldName does not exist in user document with ID $UserID');
        return null!;
      }
    } else {
      
      print('User document with ID $UserID does not exist');
      return null!;
    }
  } catch (error) {
    print('Error getting field from user document: $error');
    return null!;
  }
}

Future<List<List<dynamic>>> getSortedMedRequestsByHostel(String hostel) async {
  List<List<dynamic>> sortedMedRequests = [];

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference medReqCollection = firestore.collection("Med-Req");

  try {
    QuerySnapshot querySnapshot = await medReqCollection.where("hostel", isEqualTo: hostel).get();

    querySnapshot.docs.forEach((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>; // Explicit cast
      String? hostel = data['hostel'];

      if (hostel != null) {
        List<dynamic>? hostelList = sortedMedRequests.firstWhere((list) => list.first == hostel, orElse: () => []);

        if (hostelList!.isEmpty) {
          hostelList = [hostel];
          sortedMedRequests.add(hostelList);
        }

        hostelList.add(data);
      }
    });
  } catch (error) {
    print("Error fetching and sorting Med-Req documents: $error");
    return [];
  }

  return sortedMedRequests;
}


Future<void> addRequestToUserDocument( String fieldName, List<String> content) async {
  try {
    // Get the Firestore instance
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Reference to the "Users" collection
    CollectionReference usersCollection = firestore.collection("Student");

    // Reference to the specific user document
    DocumentReference userDocument = usersCollection.doc(UserID);

    // Update the document with the new field and content
    await userDocument.update({
      fieldName: content,
    });

    print('Field $fieldName added to user document with ID $UserID');
  } catch (error) {
    print('Error adding field to user document: $error');
  }
}
