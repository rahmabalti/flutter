import 'dart:async';
import'login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class PageVerify1 extends StatefulWidget {
  @override
  _PageVerify1State createState() => _PageVerify1State();
}

class _PageVerify1State extends State<PageVerify1> {
  final auth =FirebaseAuth.instance;
  User user;
  Timer timer;
    @override
  void initState(){
    user = auth.currentUser;
    user.sendEmailVerification();
    Timer.periodic(Duration(seconds:5), (timer) {
      checkEmailVerified();
    });
    super. initState();
     }
 @override
 void dispose(){
   timer.cancel();
   super.dispose();
 }



     @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
 'An eamil has been sent to ${user.email} please verify'),
      ));
      
    
  }
  Future <void> checkEmailVerified() async{
    user = auth.currentUser;
    await user.reload();
    if (user.emailVerified){
       timer.cancel();
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=> Pagelogin()));
    }
  }
}