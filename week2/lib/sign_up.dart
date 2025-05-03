import 'package:flutter/material.dart';
import 'verify.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Container(
        margin:EdgeInsets.all(20),
         
        child:
         Column(
      
          spacing:30,
        children: [
          
        //** Logo  **//
          Center(
            
            child:Container(
             width:130,
             height:40,
             color: Colors.grey[500],
             child:  Center(child:Text("logo",style: TextStyle(color:Colors.black),) )
                )
            )
          ,
          /////////////////////////////////
          
            //** column contain main texts **//

            Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            spacing:8,
            children: [
              Center(
            child:
            Text("create your account" ,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
               
              ),
               
              )
              ),

              Center(
                child:
                Text("join the community of designers and clients.", style: TextStyle(fontWeight: FontWeight.w400,fontSize:15,color:Colors.grey[500]),)

              ),

            ],

          ),
          ///////////////////////////////////
          
          //** phone number button **//
              Container(
                    height:50,
                    child:
                    ElevatedButton(
                onPressed: (){  },
                style: ElevatedButton.styleFrom(
                    
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                  elevation: 0
                ),
                child:
                Row(children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.phone) ,iconSize: 20,color: Colors.grey[500],),
                  Text("Phone number.",style: TextStyle(fontWeight: FontWeight.w400,fontSize:15,color:Colors.grey[500]))
                ],
                )
                )
                   
                ),

           

              //** Column Contain send button and text **//
              Column(
                 
                spacing: 10,

                children:[
                 //send button  //

                 Container(
                    height:50,
                    child:
                    ElevatedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Verify())); },
                style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.blueAccent,
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                  elevation: 0
                ),
                child:Center(child: Text("send OTP",style:TextStyle(color:Colors.white,fontSize:20)),)
                    )
                   
                ),
                   

              // text //

              Container(
                width:200,
                child: Center( child:
                Row(
                  children: [
                     Text("Already have an account?" ,style: TextStyle(fontWeight: FontWeight.w400,fontSize:13,color:Colors.grey[500],fontFamily: 'CalSans')) ,
                    Text("Log In" ,style: TextStyle(fontWeight: FontWeight.w400,fontSize:13,color:Colors.blueAccent,fontFamily: 'CalSans'))

                  ],
                )
                )     
               ),
              ]
              ),

              //** end of column that contains button and text **//

 
        ],
      )
      )
    );
  }
}