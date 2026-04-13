import 'package:flutter/material.dart';
import 'package:week6/login_form.dart';
 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   
  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (home: LoginPage());
  }
}

















class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();

  send() {
    var formData = formState.currentState;
    if ( formData != null &&formData.validate()   ) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Data Saved succssfully"),
            titleTextStyle: TextStyle(fontSize: 20, color: Colors.brown[800]),
            content: Text("Data Saved succssfully"),
          );
        },
      );
      return true;
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Please! Fill all fields correctly"),
            titleTextStyle: TextStyle(fontSize: 20, color: Colors.brown[800]),
            content: Text("Try Again!"),
          );
        },
      );
      return false;
    }
  }

  comparePassword() {
    if (password.text == confirmPassword.text) {
      return true;
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Not identical passwords"),
            titleTextStyle: TextStyle(fontSize: 20, color: Colors.brown[800]),
            content: Text("Try Again!"),
          );
        },
      );
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),

          margin: EdgeInsets.symmetric(horizontal: 24),

          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: formState,
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
              
                  TextFormField(
                    controller: firstName,
                    decoration: InputDecoration(
                      labelText: "First Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
              
                    validator: (name) {
                      if (name == null || name.trim().isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
              
                  TextFormField(
                    controller: lastName,
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
              
                    validator: (name) {
                      if (name == null || name.trim().isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
              
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
              
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'This field is required';
                      }
                      if (value.contains('@gmail.com') == false) {
                        return 'Not valid email address';
                      }
              
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
              
                  TextFormField(
                    controller: phone,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Phone",
                      prefixIcon: Icon(Icons.phone_android_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
              
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
              
                    validator: (password) {
                      if (password == null || password.trim().isEmpty) {
                        return "This field is required";
                      } else if (password.length < 8) {
                        return "password should be at least 8 characters";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 24),
              
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                     validator: (value) {
                      if (value== null || value.trim().isEmpty) {
                        return "This field is required";
                      } else if ( confirmPassword.text != password.text) {
                        return "Not identical passwords";
                      }
                      return null;
                    },
                     
                  ),
                  SizedBox(height: 24),
              
                  ElevatedButton(
                    onPressed: () {
          
                      send();
                      comparePassword();

                       
                      // Navigator.push(context,  MaterialPageRoute( builder: (context) => ProfilePage(name:name.text , email: email.text,),) );
                    },
              
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[400],
                      foregroundColor: Colors.black,
                    ),
                    child: Text("Send", style: TextStyle(fontSize: 18)),
                  ),
              
                  SizedBox(height: 16),
                  TextButton(onPressed: () {}, child: Text("Forgot Password?")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
