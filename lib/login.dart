import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'PageAcceuill.dart';

class Pagelogin extends StatefulWidget {
@override
_Pagelogin createState()=>new _Pagelogin();
}

class _Pagelogin extends State<Pagelogin>{
  // This widget is the root of your application.
  String email, passWord;
  final auth =FirebaseAuth.instance ;
  @override
  Widget build(BuildContext context){
return Scaffold(
  resizeToAvoidBottomInset: false,
backgroundColor: Colors.white,
body: Container(
height: MediaQuery.of(context).size.height,
width: double.infinity,
child: Column(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children:<Widget> [
Expanded(child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children:<Widget> [
Column(

children: <Widget>[
Text('login',
style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
),


SizedBox(
  height: 20,
),
Text('Login to your account', style: TextStyle(fontSize: 15,
color: Colors.grey[700]),
),
SizedBox(
  height: 20,
),

],
),
Padding(
padding:EdgeInsets.symmetric(horizontal: 40),
child: Column(
  children:<Widget> [
   TextFormField(
validator:(input){
if (input.isEmpty){
return 'use a sybolic name';
}
return null;
},
onSaved:(input)=> email=input,
decoration:InputDecoration(
labelText:'Email'
),
),
 TextFormField(
validator:(input){
if (input.isEmpty){
return 'Your password needs to be atleast 6 characters';
}
return null;
},
onSaved:(input)=> passWord=input,
decoration:InputDecoration(
labelText:'PassWord'
),
),
  ],
),
),
Padding(
  padding:EdgeInsets.symmetric(horizontal: 40),
  
child:Container(
padding: EdgeInsets.only(top: 4.5,left: 3),
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(50),
  color: Colors.cyan[100],
border: Border(
  bottom: BorderSide(color: Colors.black),
  top: BorderSide(color: Colors.black),
  left: BorderSide(color: Colors.black),
  right: BorderSide(color: Colors.black),

)
  ),
child:MaterialButton(
  minWidth: double.infinity,
  height: 65,
  onPressed:() {
    auth.signInWithEmailAndPassword(email: email, password: passWord).then((_){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=> Page3()));
    });
  },
   color: Color(0XFF0095FF),
elevation: 0,
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(50),

),
child: Text('login',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,
color:Colors.white 
),
),

) ,
),


  
),

Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Text("Don't have an account ? ",style:TextStyle(fontSize: 17),),
    Text("Sign up",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,
    ),
    )
  ],
),
Container(
   padding: EdgeInsets.only(top: 70),
  height: 120,
  decoration: BoxDecoration(
    image: DecorationImage(image:AssetImage("assets/photo1.jpg"),
    fit: BoxFit.fitHeight
    ),
  ),
)
],
),
),
],

),
),
);
}

}

 
