import 'package:flutter/material.dart';
import 'package:week6/profile_page.dart' ;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  _login(){
    if(_formKey.currentState!.validate()){
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text("Login") , 
        backgroundColor: Colors.deepPurple[300],
      ),
       
      body: Center(
          child: Card(
            margin: EdgeInsets.all(16.0),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                        
                    Text(
                        "Welcome  !",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 16),
                      
                    // name
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: "Name",
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your name";
                        }
                        return null;
                      },
                    ),
                     SizedBox(height: 16),
                        
                    // Email field
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                       prefixIcon: Icon(Icons.email),
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your email";
                        }
                         if (value.contains('@gmail.com') == false) {
                              return 'Not valid email address';
                          }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
              
                    // Password field
                    TextFormField(
                       
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your password";
                        }
                        if (value.length < 6) {
                          return "Password must be at least 6 characters";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
              
                    // Login button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white
                      ),
                      onPressed: (){
                      _login() ? 
                      Navigator.push(context,
                        MaterialPageRoute(
                           builder: (context) => 
                           ProfilePage(name:_nameController.text , email: _emailController.text,),
                           ) 
                           ) :
                           null ;
                      },
                      child: Text("Login"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      
    );
  }
}
