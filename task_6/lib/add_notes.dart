import 'package:flutter/material.dart';
import 'package:task_6/home.dart';
import 'package:task_6/sqldb.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {

  SqlDb sqlDb = SqlDb();

  GlobalKey <FormState> formState = GlobalKey() ;

  TextEditingController note = TextEditingController();
  TextEditingController title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add notes",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple[200],
      ),
      body:Container( 
        padding: EdgeInsets.all(10),
         child: ListView(
          children: [
            Form(
              key:formState,
              child:Column( 
                children: [
                  // title
                  TextFormField(
                  controller: title,
                  decoration: InputDecoration(
                    hintText: "title"
                  ),

                  ),

                  //note
                  TextFormField(
                  controller: note,
                   decoration: InputDecoration(
                    hintText: "note"
                  ),
                  ),


                  //add note button

                  ElevatedButton(
                    onPressed: ()async{ 
                     int response= await sqlDb.insertData('''
                            INSERT INTO notes( "title","note")
                            VALUES("${title.text}","${note.text}")
                          ''');
                      print("response=$response ================");
                      if(response > 0)
                      {
                        Navigator.of(context).pushAndRemoveUntil( MaterialPageRoute(builder: (context){return Home();}),(Route<dynamic> route) => false );
                    }

                    },
                     child: Text("Add Note")
                    )

                ],


              )
               
              )
              
          ],
         ),
         
      )
    );
  }
}