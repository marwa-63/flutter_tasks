
import 'package:flutter/material.dart';
import "package:flutter/services.dart";
import 'package:week2/sign_up.dart';

class RolePage extends StatefulWidget {
  const RolePage({super.key});

  @override
  State<RolePage> createState() => _RolePageState();
}

class _RolePageState extends State<RolePage> {

  bool designerPressed =false , clientPressed=false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Container(
        margin:EdgeInsets.all(20),
         
         
        child:
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing:30,
         children: [
          
          //** column contain main texts **//
          Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            spacing:10,
            children: [
              Center(
            child:
            Text("choose your Role" ,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
               
              ),
               
              )
              ),

              Center(
                child:
                Text("let us know how you'll be using the platform.", style: TextStyle(fontWeight: FontWeight.w400,fontSize:15,color:Colors.grey[500]),)

              ),

            ],

          ),
          /////////////////////////////////////////
          

           

              //** Row  Contain elevated button each button is in container  **//
                 Row(
                mainAxisAlignment: MainAxisAlignment.start,
                

                children:[
                 // button one //
                 
                  Expanded(
                    flex:8,
                    child:Container(
                     
                    height:150,
                    child:
                    ElevatedButton(
                onPressed: (){setState((){designerPressed=true;clientPressed=false;} );},
                style: ElevatedButton.styleFrom(
                  side: designerPressed ? BorderSide(color:Colors.blueAccent, width:1) :null,
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                  elevation: 0
                   
                ) ,
 
              child: //child of first button :colum contains photo and text
               
                 Column(
                spacing: 20,
                children: [
                 Center(child:
                Container( 
                width:50,
                height: 50,
                margin: EdgeInsets.only(top:30),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit:BoxFit.contain,
                    image: AssetImage("images/designer.png"))
                ),
                )
                ),
                Text("Designer" , style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.black  ) )
                

              ]
              ) ,
              ),
               
               
              )
              ),
              //**End of first button **/

              ////////////////////////
              
              Expanded(
                flex:1,
                child: SizedBox()
                ),
              

              // button two //

              Expanded(
                flex:8,
                child:Container(
                  
                  height:150,
                     
                    child:
                    ElevatedButton(
                onPressed: (){setState((){designerPressed=false;clientPressed=true;} );},
                style: ElevatedButton.styleFrom(
                  side: clientPressed ? BorderSide(color:Colors.blueAccent, width:1) :null,
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                  elevation: 0
                   
                ) ,
 
              child: //child of second button :colum contains photo and text
               
                 Column(
                spacing: 20,
                children: [
                Container( 
                width:50,
                height: 50,
                margin: EdgeInsets.only(top:30),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit:BoxFit.contain,
                    image: AssetImage("images/client.png"))
                ),
                ),
                Text("Client" , style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.black) )

              ]
              ) ,
              ),
               
               
              )
              ),
                ]

              ) ,

              //** end of Row that contains buttons **//

              //** continue button **//
              Container(
                    height:50,
                    child:
                    ElevatedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp())); },
                style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.blueAccent,
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                  elevation: 0
                ),
                child:Center(child: Text("continue",style:TextStyle(color:Colors.white,fontSize:20)),)
                    )
                   
                ),
                



               
              

              

               

        ],
      )
      )
    );
  }
}