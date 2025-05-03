import 'package:flutter/material.dart';
import 'create_account.dart';

class VerifyIdentity extends StatefulWidget {
  const VerifyIdentity({super.key});

  @override
  State<VerifyIdentity> createState() => _VerifyIdentityState();
}

class _VerifyIdentityState extends State<VerifyIdentity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(),
      body:Container(
        margin:EdgeInsets.all(20),
         
         
        child:
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing:50,
         children: [
          
          //** column contain main texts **//
          Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            spacing:10,
            children: [
              Center(
            child:
            Text("Verify Identity" ,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
               
              ),
               
              )
              ),

              Center(
                child:
                Text("Enter the 4 -digit code sent to your phone number.", style: TextStyle(fontWeight: FontWeight.w400,fontSize:15,color:Colors.grey[500]),)

              ),

            ],

          ),
          /////////////////////////////////////////
          

           

              //** column Contains Row of code buttons and text **//
               Column(
                spacing:10,
                children:[

                  //** Row  Contain code buttons each button is in expand **// 
                  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing:4,
                

                children:[
                 // button one //
                 
                  Expanded(
                    flex:1,
                    child:Container(
                    width: 50,
                    height:50,
                    child:
                    ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                   side:   BorderSide(color:Colors.blueAccent, width:1)  ,
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                  elevation: 0 
                ) ,
 
              child: //child of first button  
                 Center(
                  child:Text("1",style:TextStyle(color:Colors.grey[500],fontFamily: 'CalSans'),)
                
                )
                )
                )
              ),
               

              ////////////////////////
              
              //button 2//
              Expanded(
                flex:1,
                    child:Container(
                    width: 50,
                    height:50,
                    child:
                    ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                   side:   BorderSide(color:Colors.blueAccent, width:1)  ,
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                  elevation: 0 
                ) ,
 
              child: //child of second button  
                 Center(
                  child:Text("1",style:TextStyle(color:Colors.grey[500],fontFamily: 'CalSans'),)
                
                )
                )
                )
                ),

                //button 3//

                Expanded(
                flex:1,
                    child:Container(
                    width: 50,
                    height:50,
                    child:
                    ElevatedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const VerifyIdentity()));},
                style: ElevatedButton.styleFrom(
                   side:   BorderSide(color:Colors.blueAccent, width:1)  ,
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                  elevation: 0
                ) ,
 
              child: //child of third button  
                 Center(
                  child:Text("|",style:TextStyle(color:Colors.blue[400],fontFamily: 'CalSans'),)
                
                )
                )
                )
                ),


                //button 4//

                Expanded(
                flex:1,
                    child:Container(
                    width: 50,
                    height:50,
                    child:
                    ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                   side:   BorderSide(color:Colors.blueAccent, width:1)  ,
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                  elevation: 0
                ) ,
                child:null,
 
                )
                )
                ),
              

                ]
              ),
              //** end of Row that contains buttons **//

              // text //
              Container(
                width:200,
                child: Center( child:
                Row(
                  children: [
                     Text("Didn't receive the code?" ,style: TextStyle(fontWeight: FontWeight.w400,fontSize:13,color:Colors.grey[500],fontFamily: 'CalSans')) ,
                    Text(" Resend" ,style: TextStyle(fontWeight: FontWeight.w300,fontSize:13,color:Colors.blueAccent,fontFamily: 'CalSans'))

                  ],
                )
                )     
               ),
              ] 
         ),

              //** end of column that contains code buttons and text **//

              //** verify button **//
              Container(
                    height:50,
                    child:
                    ElevatedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAccount()));  },
                style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.blueAccent,
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                  elevation: 0
                ),
                child:Center(child: Text("Verify",style:TextStyle(color:Colors.white,fontSize:20)),)
                    )
                   
                ),
        

        ],
      )
      )
    );
  }
}