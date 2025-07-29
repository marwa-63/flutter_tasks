import 'package:flutter/material.dart';
import 'package:task_6/add_notes.dart';
import 'package:task_6/edit_notes.dart';
import 'package:task_6/home.dart';
 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home:  Home(),
      routes: {
        "addnotes":(context)=> AddNotes(),
        "editnotes":(context)=> EditNotes()
      },

      theme: ThemeData.dark(),
    );
  }
}
 

 
