
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
return Scaffold(
    backgroundColor:Colors.white,
    body:Center(
      child:Column(
      children:<Widget>[
       SizedBox(
      height: 100,
       ),
Text('THE CHOICES', 
style:TextStyle(fontSize: 40,
fontWeight: FontWeight.bold,
color:Color(0XFF880E4F), 
fontStyle:FontStyle.italic,
),
),
        SizedBox(
height: 30,
  ),
ElevatedButton(
  child:Text('Maps'),
  style: ElevatedButton.styleFrom(
    primary: Colors.lightBlue,
    onPrimary: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 125,vertical: 15),
    textStyle:TextStyle(fontSize: 30,
    fontWeight: FontWeight.bold),
    shape:const  BeveledRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(5))),
  ),

  onPressed: (){ },
),
  SizedBox(
height: 10,
  ),
     ElevatedButton(
       child: Text('Chat'),
       style: ElevatedButton.styleFrom(
         primary:Colors.lightBlue,
         onPrimary: Colors.white,
         padding:EdgeInsets.symmetric(horizontal: 131,vertical: 15),
         textStyle: TextStyle(fontSize: 30,
         fontWeight: FontWeight.bold),
         shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
       ),
       onPressed: (){},
        ),
      SizedBox(
height: 10,
  ),
     ElevatedButton(
       child: Text('Appareil Photo'),
       style: ElevatedButton.styleFrom(
         primary:Colors.lightBlue,
         onPrimary: Colors.white,
         padding:EdgeInsets.symmetric(horizontal: 65,vertical: 15),
         textStyle: TextStyle(fontSize: 30,
         fontWeight: FontWeight.bold),
         shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
       ),
       onPressed: (){},
        ),
     SizedBox(
height: 10,
  ),
     ElevatedButton(
       child: Text('Calendrier'),
       style: ElevatedButton.styleFrom(
         primary:Colors.lightBlue,
         onPrimary: Colors.white,
         padding:EdgeInsets.symmetric(horizontal: 93,vertical: 15),
         textStyle: TextStyle(fontSize: 30,
         fontWeight: FontWeight.bold),
         shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
       ),
       onPressed: (){},
        ),
      SizedBox(
height: 10,
  ),
     ElevatedButton(
       child: Text('Divertissements'),
       style: ElevatedButton.styleFrom(
         primary:Colors.lightBlue,
         onPrimary: Colors.white,
         padding:EdgeInsets.symmetric(horizontal: 53,vertical: 15),
         textStyle: TextStyle(fontSize: 30,
         fontWeight: FontWeight.bold),
      shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
       ),
       onPressed: (){},
        ),
       SizedBox(
height: 10,
  ),
       ElevatedButton(
       child: Text('Nutrition'),
       style: ElevatedButton.styleFrom(
         primary:Colors.lightBlue,
         onPrimary: Colors.white,
         padding:EdgeInsets.symmetric(horizontal: 100,vertical: 15),
         textStyle: TextStyle(fontSize: 30,
         fontWeight:FontWeight.bold),
         shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
       ),
       onPressed: (){},
      
        ),
      ]
    )
    )
);
    
    }
  
  }