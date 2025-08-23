import   'package:flutter/material.dart' ;
import '../models.dart/weather_details.dart';
import 'package:http/http.dart' as http;

class DisplayWeather extends StatefulWidget {
  const DisplayWeather({super.key});

   

  @override
  State<DisplayWeather> createState() => _DisplayWeatherState();
}

class _DisplayWeatherState extends State<DisplayWeather> {

  @override
  Widget build(BuildContext context) {

    final weatherDetails =  ModalRoute.of(context)!.settings.arguments as WeatherDetails ;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("weather details",style: TextStyle(color: Colors.black),),
      ),

       
      body:
      Container(
        margin: EdgeInsets.all(15),
        child: Column(
          spacing:2,   
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

               Text(weatherDetails.name,style: TextStyle(fontSize: 30),),
                
                //icon of weather
                Container(
                  width: 180,
                  height: 180,
                   
                  child: Image.network("https://openweathermap.org/img/wn/${weatherDetails.icon}@2x.png",fit: BoxFit.contain, )
                  ),

                   // weather description
                   Text(weatherDetails.description , style: TextStyle(fontSize: 25),),
        
                // temperature is in stack for celisus symbol     
                  Container(
                    //color:Colors.orange,
                    width: 100,
                    height: 100,  
                    child :Stack(
                        children: [
                          Center(
                            child: Text("${weatherDetails.temp}" , style: TextStyle(fontSize: 23),)
                            ),
                          Positioned(
                            bottom:50,
                            left:75,
        
                            // top:100,
                            // right: 100,
                            child:Text(" \u2103")
                            )
                        ],
                      )
                    ),

            //humidity
            Container(
              margin: EdgeInsets.only(top:20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   
                       Icon(Icons.water_drop,color: Colors.blue,),
                       Text("${weatherDetails.humidity}%",style:TextStyle(fontSize: 25)),
                ],
              ),
            ),
 
          ],
        ),
      )
       

    );
  }
}