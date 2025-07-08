import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
   List recentCalls=[
    {"photo" :"images/2.jpg" , "name":"Mia","time":"2 minutes ago", "state":"outgoing", "type":"call"},
    {"photo" :"images/9.png" , "name":"Ali","time":"2 minutes ago", "state":"missed", "type":"call"},
    {"photo" :"images/4.jpg" , "name":"Lili","time":"4 minutes ago","state":"outgoing", "type":"call"},
    {"photo" :"images/7.jpg" , "name":"Paul","time":"1 hours ago","state":"upcoming", "type":"call"},
    {"photo" :"images/9.png" , "name":"Sia","time":"2 minutes ago" ,"state":"outgoing", "type":"call"},
    {"photo" :"images/9.png" , "name":"Martin","time":"2 minutes ago" ,"state":"outgoing", "type":"video"},
    {"photo" :"images/3.jpg" , "name":"Maria","time":"3 hours ago","state":"upcoming", "type":"call"},
    {"photo" :"images/5.jpg" , "name":"John","time":"10 hours ago","state":"outgoing", "type":"call"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// my callss ///
          ListTile(
             title: Text("Create call link", style:TextStyle(fontWeight: FontWeight.w600)),
            subtitle:Text("share a link for Whatsapp call",style: TextStyle(color: Colors.grey[600]) ),

            leading: 
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.teal[300],
                     child: Icon(Icons.link,color: Colors.white,),
                    ) 
                ),
          

          /// contacts status ////
          Padding(
            padding: EdgeInsets.only(left:40),
            child: Text(
                    "Recent",
                    style: TextStyle(color: Colors.grey),
                  ),
          ),

          Expanded(
            child: ListView.builder(
          itemCount: recentCalls.length,
         itemBuilder:(context,i){
          return ListTile(

            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image:AssetImage (recentCalls[i]["photo"] ),fit: BoxFit.fill)

              )

            ),
            ////////////
             title: Text("${recentCalls[i]["name"]}", style:TextStyle(fontWeight: FontWeight.w600,color:
              recentCalls[i]["state"] == "missed" ? Colors.red :Colors.black) ),
              

            subtitle:Row(
              spacing: 3,
              children: [
                 if(recentCalls[i]["state"] == "missed")
                Icon(Icons.call_received, color:Colors.red)

                else if(recentCalls[i]["state"] == "upcoming")
                Icon(Icons.call_received, color:Colors.green)

                else  if(recentCalls[i]["state"] == "outgoing")
                Icon(Icons.arrow_outward, color:Colors.green)
                ,
                Text("${recentCalls[i]["time"]}", style: TextStyle(color: Colors.grey[600]) ),
              ],
            ),

            trailing :recentCalls[i]["type"] =="call" ? Icon(Icons.phone,color:Colors.teal[300]) :  Icon(Icons.video_call,color:Colors.teal[300]),
            
          );
         }
         )
            )

        ],      
      ),

      floatingActionButton: 
         
         FloatingActionButton(onPressed: (){}, backgroundColor: Colors.teal[800],
         child: Icon(Icons.phone_disabled_rounded ,color:Colors.white),),
          
        

    );
  }
}