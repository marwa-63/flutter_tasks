import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
          
        //** Logo button **//
          Center(
            
            child:Container(
             width:130,
             height:40,
             color: Colors.grey[500],
             child:  Center(child:Text("logo",style: TextStyle(color:Colors.black) ) )
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
          
          //**column contains info buttons **//
          Column(
            spacing: 15,
            children: [

              //** name button **//
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
                  IconButton(onPressed: (){}, icon: Icon(Icons.person) ,iconSize: 20,color: Colors.grey[500],),
                  Text("name",style: TextStyle(fontWeight: FontWeight.w400,fontSize:15,color:Colors.grey[500]))
                ],
                )
                )
                   
                ),

                //**password button**//
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
                Row(
                   
                  children: [
                  Expanded(flex:15,child:Text("password",style: TextStyle(fontWeight: FontWeight.w400,fontSize:15,color:Colors.grey[500])) ,),
                  
                  Expanded(flex:10, child:SizedBox()) ,

                   Expanded(
                    flex:5,
                    child:Container(
                    width: 15,
                    height: 15,
                     
                    child: Image.asset("images/hide.png"),

                   )
                   ),
                ],
                )

                )
                   
                ),

                //** confirm Password **//
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
                Row(
                   
                  children: [
                  Expanded(flex:15,child:Text("Confirm password",style: TextStyle(fontWeight: FontWeight.w400,fontSize:15,color:Colors.grey[500])) ,),
                  
                  Expanded(flex:10, child:SizedBox()) ,

                   Expanded(
                    flex:5,
                    child:Container(
                    width: 15,
                    height: 15,
                     
                    child: Image.asset("images/hide.png"),

                   )
                   ),
                ],
                )

                )
                   
                ),
          ]
         ),

         // end of column that contains info buttons//

           

              //** Column Contain create acc button and text **//
              Column(
                 
                spacing: 10,

                children:[
                 //creat acc button  //

                 Container(
                    height:50,
                    child:
                    ElevatedButton(
                onPressed: (){ },
                style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.blueAccent,
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                  elevation: 0
                ),
                child:Center(child: Text("Create Account",style:TextStyle(color:Colors.white,fontSize:20)),)
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