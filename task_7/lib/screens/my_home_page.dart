
import 'package:flutter/material.dart';
 
import 'package:task_7/models.dart/weather_details.dart';
import '../services.dart/api_services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _formKey  = GlobalKey<FormState>() ;

  TextEditingController cityName = TextEditingController();
   

   

  send()async
  {
    if(_formKey.currentState!.validate()){

      WeatherDetails? weatherDetails= await getWeather(cityName.text);
      if(weatherDetails != null)
      {
        if(mounted){
        Navigator.pushNamed(context, "weather",arguments: weatherDetails);
        }
      }

    }
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Weather App",style: TextStyle(color: Colors.white),),
      ),
      body:Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Form(
              key: _formKey ,
              child:TextFormField(
                decoration: InputDecoration(
          
                  labelText: "Enter city name",
                  labelStyle: TextStyle(color:Colors.black54),
          
                  hintText: "ex:Cairo",
                  hintStyle: TextStyle(color:Colors.grey),
          
                   focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue
                    )
                   ),
          
                  enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                      color: Colors.grey
                    )
                  ),
                  errorBorder: OutlineInputBorder(),
          
                  suffixIcon: IconButton(onPressed: (){ send();}, icon:Icon(Icons.search))
                   
              ),
              keyboardType:TextInputType.name,
          
              validator: (value) {
                
                value!.trim();
          
                if(value.isEmpty)
                {
                 
                  return "This field can't be empty" ;
                }
                
                for(int i=0; i < value.length ;  i++)
                {
                  int? check = int.tryParse(value[i]);
                  
                
                  if( check != null)
                  {
                    return "digits not allowed";
                  } 
          
                }
                return null;
                
              },
               
              controller: cityName,
              ),
          )
          ),
          


        ],
      )
    );
  }
}