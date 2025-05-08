import 'package:flutter/material.dart';
import 'sign_up.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

   
  bool emailPressed=false ,passwordPressed=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      appBar:AppBar(
        title: Text("Home Screen"),
        titleTextStyle: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,fontSize: 20),
        leading:Icon(Icons.home_filled , color:Colors.white),
        backgroundColor: Colors.teal[600],
      ),
      body:
       SingleChildScrollView(
        child: Container(
          //color:Colors.pink,
          width:double.infinity,
          margin: EdgeInsets.all(20),
          child: Column(
            spacing: 40,
            children: [
               Center(child:Text("Welcome back!",style: TextStyle(color: Colors.brown[800] ,fontWeight: FontWeight.bold,fontSize: 35) ,) ),
               //buttons column
                Column(
               spacing: 10,
              children: [
                //email button//
                Container( 
                  width:double.infinity,
                   
                  height: 50,
                   
                  child:ElevatedButton.icon(
                  onPressed:()=> ( setState((){emailPressed=true;passwordPressed=false;} ) ) , 
                   style: ElevatedButton.styleFrom(
                    side: emailPressed ? BorderSide(color:Colors.teal , width:1) :null,
                     
                    elevation: 0,
                  ) ,
              icon: Icon(Icons.mail ,color:Colors.grey[500]),
              iconAlignment: IconAlignment.end,
              label: Text("Email address",style:TextStyle(color:Colors.grey[400],fontSize: 17), )
            )
              ),
        
              //*** password button ***//
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       
                      Container(
                        width: double.infinity,
                         
                        height: 50,
                        child: ElevatedButton.icon(
                  onPressed:()=> ( setState((){emailPressed=false;passwordPressed=true;} ) ) , 
                   style: ElevatedButton.styleFrom(
                    side: passwordPressed ? BorderSide(color:Colors.teal , width:1) :null,
                    elevation: 0,
                  ) ,
              icon: Icon(Icons.visibility_off ,color:Colors.grey[500]),
              iconAlignment: IconAlignment.end,
              label: Text("Password",style:TextStyle(color:Colors.grey[400],fontSize: 17), )
            )
        
            ),
                       
            //// text /////
            Text("Forgot Password?",style:TextStyle(color:Colors.teal[400],fontSize: 12))
        
                ],
            
            ),
             // end of column that contains password button and text//
        
              ],
              ),
              //end of buttons column//
        
             // login button//
             Container(
              width:120,
               
              child: 
               ElevatedButton(onPressed: (){} ,
             style:ElevatedButton.styleFrom(backgroundColor: Colors.teal[600]),
             child: Text("Log in",style: TextStyle(color: Colors.white))),
             ),
        
        
             //divider//
             Row(
              spacing:0.0,
              children: [
                Expanded(flex:4,child: Divider(color:Colors.teal[600])),
                Expanded(flex:4,child: Text("Or sign up using",style:TextStyle(color:Colors.teal[400],fontSize: 12) ,textAlign: TextAlign.center,) ),
                Expanded(flex:4,child: Divider(color:Colors.teal[600])),
        
             ],),
        
             //social media //
                   Row(
              spacing: 5,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 ( Image.asset("images/facebook.png",width: 40,height: 40)),
                  (Image.asset("images/google.png",width: 35,height: 35)),
                  ( Image.asset("images/apple.png",width: 35,height: 35))
        
              ],
             ),
              //      
              ////sign up
        
             Row(
              spacing:0.0,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text("Don't have an account yet?",style: TextStyle(color:Colors.brown[800],fontWeight:FontWeight.w500),),
                  TextButton(
                  onPressed:()=>Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()) ), 
                  child: Text("Sign up",style: TextStyle(color:Colors.teal[700],fontWeight:FontWeight.w700),))
        
              ],
             ),
        
            ]
          ) //main column
        ),
      )
       
    );
  }
}
