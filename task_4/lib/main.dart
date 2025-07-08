import 'package:flutter/material.dart';
import 'chats.dart';
import 'calls.dart';
import 'status.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
       
      home: MyHomePage (),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key });

 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   
  @override
  Widget build(BuildContext context) {

    int unreadchats=1;
     
    return DefaultTabController(
      length: 4,
      child:
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal[600],
            title: Text("WhatsApp", style:TextStyle(color: Colors.white)),
            
            actions: [
              Row(
                spacing:6,
                children: [
                  Icon(Icons.camera_alt_outlined,color:Colors.white),
                  Icon(Icons.search,color:Colors.white), 
                  Icon(Icons.more_vert,color:Colors.white)
                
                ],
              ),
            ],

            bottom: TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),
              tabs: [
                // icon //
                Icon(Icons.groups_sharp,size: 35,),
                //chats//
                Tab(
                  child:Row(
                    spacing: 6,
                    children: [
                    Text("Chats"),
                    Container(
                      height: 20,
                      width: 20,  
                      decoration: BoxDecoration(shape: BoxShape.circle,color:Colors.teal[300], ),
                      child:Center(child:  Text("$unreadchats",style: TextStyle(color:Colors.white,fontSize: 14,fontWeight:FontWeight.w600),))
                    )

                  ],)
                ),
                
               Tab(text: "Status",),
              Tab(text: "Calls",),
                 

            ]
            ),
          ),

          ///////// body ////////////
          body:TabBarView(
            children:  [
              Container(), 
              Chats(),
              Status(),
              Calls(),
            ]
            
            )


           
        ),
      
    );
  }
}
