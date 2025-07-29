import 'package:flutter/material.dart';
import 'package:task_6/home.dart';
import 'package:task_6/sqldb.dart';

class EditNotes extends StatefulWidget {

   

  const EditNotes({super.key});
  


  @override
  State<EditNotes> createState() => _EditNotesState();
}

class _EditNotesState extends State<EditNotes> {

   
  SqlDb sqlDb = SqlDb();

  GlobalKey <FormState> formState = GlobalKey() ;

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as List;

  final int id = args[0];
  final TextEditingController title = TextEditingController(text: args[1]);
  final TextEditingController note = TextEditingController(text: args[2]);
    return Scaffold(

      appBar: AppBar(
        title: Text("Edit note",style: TextStyle(color: Colors.white),),
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
                     int response= await sqlDb.updateData('''
                            UPDATE notes SET
                            title="${title.text}",
                            note="${note.text}"
                            WHERE 
                            id = $id
                          ''');
                      print("response=$response ================");
                      if(response > 0)
                      {
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){return Home();}),(Route<dynamic> route) => false);
                    }

                    },
                     child: Text("Edit Note")
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