import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

 class MyApp extends StatelessWidget
 {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: ProfilePage()
      );
  }
   
 }

 class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.blue,
        title: Text("My Profile" , style:TextStyle(color: Colors.white)),
        leading:IconButton(onPressed:(){}, icon: Icon(Icons.arrow_back , color:Colors.white))

      ),
      body:Container(
        width: 500,
        height:500,
        margin:EdgeInsets.all(10),
        
        
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Container(
            height: 150,
            width: 150,
             
            decoration :BoxDecoration(
              //color:Colors.green,
              border:Border.all(width:3) ,
              borderRadius: BorderRadius.circular(100),
              
              image:DecorationImage(
                fit:BoxFit.contain,
                image:AssetImage( "images/profile-pic.png")
              )
              )

            ),
            Text("Name : Marwa Soliman"),
            Text("Age : 21"),
            Text("Address : city ,street 12"),
            Text("Phone number : 0123456789"),
        ]

            

          )
      )
          
            

        

      );
      

    


     
  }

 }
