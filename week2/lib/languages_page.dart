import 'package:flutter/material.dart';
import 'role_page.dart';

class Languges extends StatefulWidget {
  const Languges({super.key});

  @override
  State<Languges> createState() => _LangugesState();
}

class _LangugesState extends State<Languges> {
  bool englishPressed =false , arabicPressed=true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Container(
        margin:EdgeInsets.all(20),
         
        child:
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing:50,
        children: [

          Center(
            child:
            Text("choose your language" ,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25,
              fontFamily: 'CalSans'
              ),
               
              )
              ),

              //** Column Contain elevated button  **//
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 15,

                children:[
                 // button one //
                  Container(
                    height:50,
                    child:
                    ElevatedButton(
                onPressed: (){setState((){englishPressed=true;arabicPressed=false;} );},
                style: ElevatedButton.styleFrom(
                  side: englishPressed ? BorderSide(color:Colors.blueAccent, width:1) :null,
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                  elevation: 0
                   
                ) ,
 
              child: 
              Row(
                spacing: 20,
                children: [
                Container( 
                width:30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit:BoxFit.contain,
                    image: AssetImage("images/USA.png"))
                ),
                ),
                Text("English" , style:TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:Colors.black,fontFamily: 'CalSans') )

              ]
              )
               
              ),
              ),

              // button two //

              Container(
                    height:50,
                    child:
                    ElevatedButton(
                onPressed: (){setState((){englishPressed=false;arabicPressed=true;} );},
                style: ElevatedButton.styleFrom(
                  side: arabicPressed ? BorderSide(color:Colors.blueAccent, width:1) :null,
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                  elevation: 0
                   
                ) ,
 
              child: 
              Row(
                spacing: 20,
                children: [
                Container( 
                width:30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit:BoxFit.contain,
                    image: AssetImage("images/EG.png"))
                ),
                ),
                Text("العربية" , style:TextStyle(fontSize: 15,fontWeight: FontWeight.w800,color:Colors.black,fontFamily: 'CalSans') )

              ]
              )
               
              ),
              ),

              // Text//
              Text("you can change it later from settings", style: TextStyle(fontWeight: FontWeight.w400,fontSize:10,color:Colors.grey[500],fontFamily: 'CalSans'),)

                   


                ]

              ),

              //** end of column thaat contains buttons **//

              //** continue button **//
              Container(
                    height:50,
                    child:
                    ElevatedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const RolePage())); },
                style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.blueAccent,
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                  elevation: 0
                ),
                child:Center(child: Text("continue",style:TextStyle(color:Colors.white,fontSize:20)),)
                    )
                   
                )



               
              

              

               

        ],
      )
      )
       

    );
  }
}

 