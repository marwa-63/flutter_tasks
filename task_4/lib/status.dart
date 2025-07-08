import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {

  List recentStatus=[
    {"photo" :"images/2.jpg" , "name":"Mia","time":"2 minutes ago" ,"number":1},
    {"photo" :"images/9.png" , "name":"Ali","time":"2 minutes ago" ,"number":1},
    {"photo" :"images/4.jpg" , "name":"Lili","time":"4 minutes ago","number":1},
    {"photo" :"images/7.jpg" , "name":"Paul","time":"1 hours ago","number":2},
    {"photo" :"images/9.png" , "name":"Sia","time":"2 minutes ago" ,"number":1},
    {"photo" :"images/9.png" , "name":"Martin","time":"2 minutes ago" ,"number":1},
    {"photo" :"images/3.jpg" , "name":"Maria","time":"3 hours ago","number":3},
    {"photo" :"images/5.jpg" , "name":"John","time":"10 hours ago","number":1},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// my status ///
          ListTile(
             title: Text("My Status", style:TextStyle(fontWeight: FontWeight.w600)),
            subtitle:Text("Tap to add status update",style: TextStyle(color: Colors.grey[600]) ),

            leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/1.jpg"),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.teal[300],
                        child: Icon(Icons.add, size: 15, color: Colors.white),
                      ),
                    ),
                  ],
                )
          ),

          /// contacts status ////
          Padding(
            padding: EdgeInsets.only(left:40),
            child: Text(
                    "Recent Updates",
                    style: TextStyle(color: Colors.grey),
                  ),
          ),

          Expanded(
            child: ListView.builder(
          itemCount: recentStatus.length,
         itemBuilder:(context,i){
          return ListTile(

            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                border:Border.all(color:Color.fromARGB(255, 0, 137, 123),width: 3 ),
                shape: BoxShape.circle,
                image: DecorationImage(image:AssetImage (recentStatus[i]["photo"] ),fit: BoxFit.fill)

              )

            ),
            ////////////
             title: Text("${recentStatus[i]["name"]}", style:TextStyle(fontWeight: FontWeight.w600)),

            subtitle:Text("${recentStatus[i]["time"]}", style: TextStyle(color: Colors.grey[600]) ),
            
          );
         }
         )
            )

        ],      
      ),

      floatingActionButton: 
      Column(
        spacing: 6,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

         FloatingActionButton(onPressed: (){}, backgroundColor: Colors.teal[600],
         child: Icon(Icons.edit ,color:Colors.teal[900],),),
         
         FloatingActionButton(onPressed: (){}, backgroundColor: Colors.teal[800],
         child: Icon(Icons.camera_alt ,color:Colors.white),),
          
        ],
      ),
      

    );
  }
}