import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task_6/sqldb.dart';
import 'package:flutter_randomcolor/flutter_randomcolor.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  SqlDb sqlDb = SqlDb();
  bool isloading=true;
  List<Map> notes=[];

  // Color widgetcolor =RandomColor.getColorObject(Options(
     
  //                           luminosity: Luminosity.light
  //                          ));

 Future readData() async{
    List<Map> response = await sqlDb.readData("SELECT * FROM notes");
    print("response:${response}");
    isloading=false;
    notes.addAll(response);
    if(mounted)
    {
      setState(() {
        
      });
    }
     
     return response;
  }

  @override
  void initState() {
    super.initState();
    readData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple[200],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, "addnotes");
        },
        backgroundColor: Colors.purple[100],
         child:Icon(Icons.add,color: Colors.white,),
        ),

      body: Container(    
        child:
                isloading==true? Center(child: Text("is loading.....")):
                 ListView.builder(
                        itemCount: notes.length,
                        itemBuilder: (context, index){
                          return Card(
                           color:   RandomColor.getColorObject(Options(
                            alpha: 1,
                            luminosity: Luminosity.light
                           )),
                            child: ListTile(
                            isThreeLine: true,
                            title: Text("${notes[index]["title"]}",style: TextStyle(color: Colors.black),),
                            subtitle: Text("${notes[index]["note"]}",style: TextStyle(color: Colors.black),),

                            
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                //**  delete note button **//
                                IconButton(onPressed: (){
                                
                                  // show alert dialog to confirm deleting //
                                  showDialog(
                                    context: context
                                    , 
                                    builder:(context){
                                      return AlertDialog(
                                        title: Text("Are you sure you want to delete this note?", style:TextStyle(fontSize: 15)),
                                        actions: [
                                          TextButton(
                                            onPressed: ()async{
                                                 int response =await sqlDb.deleteData('''
                                                         DELETE FROM notes WHERE id = ${notes[index]["id"]}
                                                     ''');
                                                     if( response >0)
                                                     {
                                                      notes.removeWhere((item)=>item["id"]==notes[index]["id"]);
                                                      setState(() {
                                                       
                                                     });
                                                     }  
                                                     Navigator.pop(context);          
                                            },
                                            child: Text("Yes")
                                            ),
                                         TextButton(onPressed: (){
                                           Navigator.pop(context);
                                         }, child: Text("No")),
                                
                                        ],
                                
                                      );
                                
                                    } 
                                    );
                                }, 
                                icon: Icon(Icons.delete,color: Colors.black54,) 
                                ),

                                //** edit button **//

                                IconButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, "editnotes",arguments:[notes[index]["id"],notes[index]["title"],notes[index]["note"]] );
                                  }, 
                                  icon: Icon(Icons.edit,color: Colors.black54,)
                                  
                                  )
                              ],
                            ),

                            ),
                          );


                        }
                        )
                      
                               
      ),
    );
  }
}