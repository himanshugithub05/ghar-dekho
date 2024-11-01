import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController{

  // google sign in
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  //
  // Future<UserCredential?> loginWithGoogle() async {
  //   try {
  //     final GoogleSignIn googleSignIn = GoogleSignIn();
  //     final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
  //
  //     if (googleUser == null) {
  //       // User canceled the sign-in
  //       return null;
  //     }
  //
  //     final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
  //
  //     final credential = GoogleAuthProvider.credential(
  //       idToken: googleAuth.idToken,
  //       accessToken: googleAuth.accessToken,
  //     );
  //
  //     return await _auth.signInWithCredential(credential);
  //   } catch (e) {
  //     print("Error during Google sign-in: $e");
  //   }
  //   return null;
  // }

  //login method
  Future<UserCredential?> loginMethod({email, password, context}) async{
    UserCredential? userCredential;
    try{
      userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch (e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
    return userCredential;
  }

  //logout method
  Future<void> logoutMethod({context}) async{
    try{
      await FirebaseAuth.instance.signOut();
      VxToast.show(context, msg: "successfully logout");
    }catch(e){
      VxToast.show(context, msg: 'Log out failed: ${e.toString()}');
    }
  }

  //signup method
  Future<UserCredential?> signUpMethod({email, password, firstName, lastName, mobile, context}) async{
    UserCredential? userCredential;
    try{
      userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      await storeUserData(
        firstName: firstName,
        lastName: lastName,
        email: email,
        mobile: mobile,
        password: password,
      );
    }on FirebaseAuthException catch (e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
    return userCredential;
  }


  //data store
  Future<void> storeUserData({firstName, lastName, email, mobile, password}) async{
    DocumentReference store = FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser!.uid);
    await store.set({
      'first_name' : firstName,
      'last_name' : lastName,
      'email' : email,
      'mobile' : mobile,
      'photoUrl':'',
      'password' : password,
    });
  }

  Future<void> sendPasswordLink({email,context}) async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    }on FirebaseAuthException catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  Future<bool> checkRegisteredUser({email, context}) async{
    try{
      final querySnapshot = await FirebaseFirestore.instance
          .collection('users')
          .where('email', isEqualTo: email)
          .get();
      return querySnapshot.docs.isNotEmpty;
    }catch(e){
      VxToast.show(context, msg: e.toString());
      return false;
    }
  }


}