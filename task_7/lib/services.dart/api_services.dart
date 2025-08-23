import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models.dart/weather_details.dart';
 
  getWeather(String cityName)async{

    var response = await http.get( Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$cityName&units=metric&appid=2340a79c56e3ad1f366475ce5e4d70de") );
    
     if(response.statusCode == 200)
    {
      final parsed = json.decode(response.body);

      if(parsed.isEmpty) // this means that city name is wrong so returned empty list
      {
        return null;  
      }
      else{
        return WeatherDetails.fromJson(parsed);
      }
    }
    //error with the url respones
    else{
      throw Exception("Error happened");
    }


  }


