 import 'package:flutter/material.dart';
 import 'home_screen.dart';
import 'dart:io';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController firstName =TextEditingController();
  TextEditingController lastName =TextEditingController();
  TextEditingController password =TextEditingController();
  TextEditingController confirmPassword =TextEditingController();
  TextEditingController email =TextEditingController();

  bool showPassword=false, showConfirmPassword=false, accept=false, darkMode=false;
   
  int? value;
  String? gender;

  @override
  Widget build(BuildContext context) {

    GlobalKey<FormState> formState = new GlobalKey<FormState>();
     

    send()
    {
      var formData = formState.currentState;
      if( formData! .validate() && accept != false && gender != null)
      {
         return true;

      }
      else{
         showDialog(context: context, builder: (context){
          return  AlertDialog(
            title:Text("Please! Fill all fields correctly"),
            titleTextStyle: TextStyle(fontSize:20 ,color:Colors.brown[800]),
            content: Text("Try Again!"),
          
          );
           
        }
        );
        return false;
      }
    }

    comparePassword()
    {
      
      if(password.text == confirmPassword.text){
        return true; }

      else {
        showDialog(context: context, builder: (context){
          return  AlertDialog(
            title:Text("Not identical passwords"),
            titleTextStyle: TextStyle(fontSize:20 ,color:Colors.brown[800]),
            content: Text("Try Again!"),
          
          )
           ;

        }
        );
        return false;
        }
    }

    userInformation()
    {
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title:
          Center(child: Text("Welcome, ${firstName.text}!",style:TextStyle(color:Colors.teal[800],fontWeight:FontWeight.bold,fontSize: 25))),
          content:Column(
            spacing: 10,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("First Name: ${firstName.text}"),
              Text("LastName: ${lastName.text}"),
              Text("Email: ${email.text}"),
              Text("Gender: $gender")

            ],
          ) ,
          backgroundColor: darkMode? Colors.black :null,
          contentTextStyle:   darkMode? TextStyle(color: Colors.white,fontSize: 17) :TextStyle(color: Colors.brown[800],fontSize: 17),

        );

      });
    }

    return Scaffold(
      appBar:AppBar(
        title: Text("Sign Up"),
        titleTextStyle: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,fontSize: 20),
        leading:IconButton(onPressed:()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()) ),icon:Icon(Icons.arrow_back) , color:Colors.white),
        backgroundColor: Colors.teal[600],
      ),

      ///////////////////////////////////////////////////

      body:
       SingleChildScrollView(

        child: Container ( 

         margin: EdgeInsets.all(20),

          child:Column(
          spacing: 25,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child:Text("Create Account",style: TextStyle(color: Colors.brown[800] ,fontWeight: FontWeight.bold,fontSize: 35) ,) ),

            //name form//
            Form(
              key:formState,
              child: Column(
                spacing: 10,
                children: [
                  //first name
                   Container(
                    width: 500,
                     
                    child:TextFormField(
                    
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      label:Text("First Name"),
                      labelStyle: TextStyle(fontSize: 17,color: Colors.brown[800]),
                       enabled: true,
                       filled: true,
                      //fillColor: Colors.white24,
                      focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    ),

                    controller:firstName,

                    validator: (name) {
                       if(name==null ||name.trim().isEmpty)
                       {
                        return 'This field is required';
                       }
                        for(int i=0; i<name.length;i++)
                        {
                            value = int.tryParse(name[i]);
                            if(value != null)
                            {
                              return 'digits not allowed';
                            }
                        }
                      
                       
                        return null;
                      
                    },
        
                  ),
                   ),
        
                   //last name
        
                    Container(
                    width: 500,
                     
                    child:TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      label:Text("Last Name"),
                      labelStyle: TextStyle(fontSize: 17,color: Colors.brown[800]),
                       enabled: true,
                       filled: true,
                      //fillColor: Colors.white24,
                      focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    controller:lastName,
                    validator: (name) {
                       if(name==null ||name.trim().isEmpty)
                       {
                        return 'This field is required';
                       }
                        for(int i=0; i<name.length;i++)
                        {
                            value = int.tryParse(name[i]);
                            if(value != null)
                            {
                              return 'digits not allowed';
                            }
                        }
                      
                       
                        return null;
                      
                    },
        
                  ),
                   ),

                   //email//

                  Container(
                    width: 500,
                     
                    child:TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      label:Text("Email"),
                      labelStyle: TextStyle(fontSize: 17,color: Colors.brown[800]),
                       enabled: true,
                       filled: true,
                      //fillColor: Colors.white24,
                      focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    controller:email,
                    validator: (name) {
                       if(name==null ||name.trim().isEmpty)
                       {
                        return 'This field is required';
                       }
                      if(name.length<10 || ( name.substring(name.length-10) != "@gmail.com" ))
                      {
                        return 'Not valid email address';
                      }
                      
                       
                        return null;
                      
                    },
        
                  ),
                   ),


                   //password//

                   Container(
                    width: 500,
                     
                    child:TextFormField(

                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: () { setState( ()=>showPassword=!showPassword );},  icon:showPassword? Icon(Icons.visibility): Icon(Icons.visibility_off) ),
                      label:Text("Password"),
                      labelStyle: TextStyle(fontSize: 17,color: Colors.brown[800]),
                       enabled: true,
                       filled: true,
                      focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    controller:password,
                    validator: (password) {
                      if(password==null || password.trim().isEmpty)
                      {
                        return"This field is required";
                      }
                      else if(password.length < 8 )
                      {
                        return"password should be at least 8 characters";
                      }
                       else if(password.length > 12 )
                      {
                        return"Maximum password  is 12 character";
                      }
                        return null;
                      
                    },

                    obscuringCharacter: '•',
                    obscureText:showPassword? false : true ,
        
                  ),
                   ),
                  ////////////////////
                  
                  //confirm password//

                  Container(
                    width: 500,
                     
                    child:TextFormField(

                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: () { setState( ()=>showConfirmPassword=!showConfirmPassword );},  icon:showConfirmPassword? Icon(Icons.visibility): Icon(Icons.visibility_off) ),
                      label:Text("Confirm Password"),
                      labelStyle: TextStyle(fontSize: 17,color: Colors.brown[800]),
                       enabled: true,
                       filled: true,
                      focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    controller:confirmPassword,
                    validator: (password) {
                      if(password==null || password.trim().isEmpty)
                      {
                        return"This field is required";
                      }
                      else if(password.length < 8 )
                      {
                        return"password should be at least 8 characters";
                      }
                       else if(password.length > 12 )
                      {
                        return"Maximum password  is 12 character";
                      }
                        return null;
                      
                    },

                    obscuringCharacter: '•',
                    obscureText:showConfirmPassword? false : true ,
        
                  ),
                   ),

                   Column(
              //spacing:1,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Choose Gender:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                RadioListTile(value:'male'  , groupValue: gender, onChanged:(val){setState(()=>gender=val);},title: Text("Male",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)), activeColor: Colors.brown[800],),
                 RadioListTile(value:'female'  , groupValue: gender, onChanged:(val){setState(()=>gender=val);} ,title:Text("Female",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)), activeColor: Colors.brown[800],)


            ],),

                   


                ],
              )
              ),
            ///////////////////////////
 
            // check box //

            CheckboxListTile(value: accept, onChanged: (val)=>setState(()=>accept=val!),title: Text("Agree to terms and conditions ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700)), activeColor: Colors.brown[800],),

            //change mode//
            SwitchListTile(
            title: Text("Switch to Dark mode",style:TextStyle(fontWeight:FontWeight.w600)),
            value: darkMode,
            onChanged: (val) => setState(() => darkMode = val),
            activeColor: Colors.brown[600],
             ),


            //send button//
            Container(

              width: double.infinity,
              child:
              ElevatedButton(
                onPressed: (){
                   
                   if(send() &&  comparePassword() )
                   {
                    showDialog(context: context, builder: (context){
                    return  AlertDialog(
                    title:Text("Are you sure?"),
                     titleTextStyle: TextStyle(fontSize:20 ,color:Colors.brown[800]),
                     content: Text("you want to create account"),
                     actions: [
                      TextButton(
                     onPressed:(){Navigator.pop(context);userInformation();},
                     child: Text("Yes",style: TextStyle(color:Colors.teal[700],fontWeight:FontWeight.w700),)),

                  TextButton(
                  onPressed:()=>Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()) ), 
                  child: Text("No",style: TextStyle(color:Colors.teal[700],fontWeight:FontWeight.w700),))
                     ],
          
                      );
                    }
                    );
                    }
                   
                  },
                style:ElevatedButton.styleFrom(backgroundColor: Colors.teal[600]), 
                  //child of send button
                child: Text("Send",style: TextStyle(color:Colors.white),)
                )
            )


          ]
          )
          ),
      )
    );
  }
}