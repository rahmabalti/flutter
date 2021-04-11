import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import'login.dart';
import'loginUP.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
    runApp(MyApp());
  
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
title:'welcome1',
theme: ThemeData(
  primarySwatch: Colors.blue,
),
home:MyApp2(),

  
 
          
    );
    
  }

}

class MyApp2 extends StatelessWidget{
  
  Widget build(BuildContext context){
    return Scaffold(
    
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
        Color(0XFFFFCCBC).withOpacity(0.1),
       Color(0XFFFB8C00).withOpacity(0.7),
    ],
  
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter
    )
  ),
        child:Column(
          children:< Widget> [
            SizedBox(
              height: 100,
            ),
            Text('Welcome',
            style: TextStyle(fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Color(0XFF880E4F),
            fontStyle: FontStyle.italic,
            ),
            ),
            SizedBox(
              height: 30
            ),
            Container(
              padding: EdgeInsets.only(top: 70),
  height: 300,
  decoration: BoxDecoration(
    image: DecorationImage(image:AssetImage("assets/asfour.png"),

            )

          
          )
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
  onPressed: (){
    Navigator.push(context,MaterialPageRoute(builder:(_)=>Pagelogin()));
    },
  
  color: Color(0XFF006064),
elevation: 0,
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(50),

),

child:Text('login',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,
color:Colors.cyan[100] ,
   
),
        ),
      ),
),
  
         ),
         SizedBox(
              height: 30
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
  onPressed: (){
   Navigator.push(context,MaterialPageRoute(builder:(_)=>SignupPage()));
  },
  color: Color(0XFF006064),
elevation: 0,
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(50),

),

child:Text('sign up',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,
color:Colors.white ,
   
),
        ),
      ),
),
        ),
          ]
      ),
         ),
    );
       

          
     
  }


  }