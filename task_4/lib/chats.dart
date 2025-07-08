import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List recentchats=[
    {"photo" :"images/2.jpg" , "name":"Mia", "message":"Let's meet" ,"sent":false, "messageState":null,"unreadMessages":125 ,"time":"11:11"},
    {"photo" :"images/9.png" , "name":"Sarah", "message":"Nice" ,"sent":false , "messageState":null,"unreadMessages":null,"time":"10:03"},
    {"photo" :"images/4.jpg" , "name":"Lili", "message":"Thanks!" ,"sent":true , "messageState":"seen","unreadMessages":null,"time":"08:12"},
    {"photo" :"images/5.jpg" , "name":"John", "message":"How are you?" ,"sent":true , "messageState":"delivered","unreadMessages":null,"time":"05:50"},
    {"photo" :"images/3.jpg" , "name":"Maria", "message":"hi" ,"sent":true , "messageState":"sent","unreadMessages":null,"time":"11:12"},
    {"photo" :"images/9.png" , "name":"ALi", "message":"hi" ,"sent":true , "messageState":"seen","unreadMessages":null,"time":"03:32"},
    {"photo" :"images/7.jpg" , "name":"Paul", "message":"hi" ,"sent":true , "messageState":"seen","unreadMessages":null,"time":"12:11"},
    {"photo" :"images/9.png" , "name":"Leena", "message":"hi" ,"sent":true , "messageState":"delivered","unreadMessages":null,"time":"11:11"},
    {"photo" :"images/6.jpg" , "name":"Jack", "message":"hi" ,"sent":true , "messageState":"seen","unreadMessages":null,"time":"11:11"},
    {"photo" :"images/8.jpg" , "name":"violet", "message":"hi" ,"sent":true , "messageState":"seen","unreadMessages":null,"time":"11:11"},

  ];
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :ListView.separated(
        itemBuilder:(context,i){
          return ListTile(

            title: Text("${recentchats[i]["name"]}", style:TextStyle(fontWeight: FontWeight.w600)),

            subtitle:
            recentchats[i]["sent"] == false ?
           ( Text("${recentchats[i]["message"]}",style: TextStyle(color: Colors.grey[600]))  ) : 
            ( Row(
              spacing: 3,
               children: [

                if(recentchats[i]["messageState"] == "seen")
                Icon(Icons.done_all_sharp, color:Colors.blue)

                else if(recentchats[i]["messageState"] == "delivered")
                Icon(Icons.done_all, color:Colors.grey)

                else  if(recentchats[i]["messageState"] == "sent")
                Icon(Icons.done, color:Colors.grey)
                ,
                 Text("${recentchats[i]["message"]}", style: TextStyle(color: Colors.grey[600]),)

               ],
            ) 
            ),
            
            


            trailing:     
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 2,
                   
                  children: [
                    Text("${recentchats[i]["time"]}" ,style:TextStyle(fontSize: 13)),

                    if( recentchats[i]["sent"] == false) 
                    recentchats[i]["unreadMessages"] != null ? 
                    Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                       
                      decoration: BoxDecoration(
                        color:Colors.teal[300],
                       borderRadius: BorderRadius.circular(20)
                         

                      ),
                      child: Text("${recentchats[i]["unreadMessages"]}" ,style: TextStyle(color: Colors.white,fontSize: 14),)
                      )
                    :Text("")                   
                  ],
                ),
            
            
             
            
            leading:Container(
              width:60,
              height: 60,
              decoration: BoxDecoration(
                //color:Colors.lightBlue,
                
                shape: BoxShape.circle,
                image: DecorationImage(image:AssetImage (recentchats[i]["photo"] ),fit: BoxFit.fill
                ),
              
            ),
            

            )
            

          );
          

        }, 
        separatorBuilder: (context,i)=> Divider(), 
        itemCount: recentchats.length
      ) ,
      ///////////////////////
        floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal[800],
        child: Icon(Icons.message ,color:Colors.white),
      ),
    );
  }
}