import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_2/verify.dart';



class SignupPage extends StatefulWidget {
  _SignupPage createState()=>new _SignupPage();
}

class _SignupPage extends State<SignupPage>{
   String email, passWord, confirmPassWord;
  final auth =FirebaseAuth.instance ;
  @override
  Widget build(BuildContext context){
return Scaffold(
resizeToAvoidBottomInset: true,
backgroundColor: Colors.white,
body: SingleChildScrollView(
  child:Container(
    padding: EdgeInsets.symmetric(
      horizontal: 40
    ),
  height: MediaQuery.of(context).size.height,
  width: double.infinity,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(
        children:<Widget> [
Text("Sign Up",style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,

      ),),
SizedBox(
height: 20,
    ),
       Text("Create your account, IT's free",
    style: TextStyle(
      fontSize: 15,
      color: Colors.grey[700]
    ),)
        ],
      ),
    Column(
children:<Widget> [
     TextFormField(
validator:(input){
if (input.isEmpty){
return 'please type an email';
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
    ) , 
    Container(
padding: EdgeInsets.only(top:3,left: 3 ),
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
  child: MaterialButton(
  minWidth: double.infinity,
  height: 65,
  onPressed: (){
   
    auth.createUserWithEmailAndPassword(email: email, password: passWord).then((_){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=> PageVerify1()));
    }); 
  },
  color: Color(0XFF0095FF),
elevation: 0,
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(50),

),
child: Text('Sign up',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,
color:Colors.white 
),
),

),
    ),
    SizedBox(
  height: 05,
),
Positioned (
    top: 70, 
    left: 30,
   child: Image.asset(
     "assets/rang.jpg",
   width: 960,
   height:  350,
   ),
),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children:<Widget> [
  Text("Already have an account"),
  Text("login",style: TextStyle(
    fontSize: 10,fontWeight: FontWeight.w600
  ),
  ),
],
)
],
    
  ),
  
  ),
),


);
}

}