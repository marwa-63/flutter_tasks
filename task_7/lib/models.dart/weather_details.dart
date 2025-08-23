class WeatherDetails {
    
  final String name;

  // their key is main
  final double temp;
  final double feelsLike ;
  final double maxTemp ;
  final double minTemp ;
  final int humidity ;

  // key is weather
  final String icon;
  final String description ;

  WeatherDetails(
    {required this.name,required this.temp, required this.feelsLike
    ,required this.maxTemp,required this.minTemp,
    required this.humidity,required this.icon,
    required this.description });

 factory WeatherDetails.fromJson( json )
  {
     
    return WeatherDetails(
    name:json["name"],
    temp: json["main"]["temp"], 
    feelsLike:  json["main"]["feels_like"], 
    maxTemp: json["main"]["temp_max"], 
    minTemp: json["main"]["temp_min"], 
    humidity: json["main"]["humidity"] ,
    icon:json["weather"][0]["icon"],
    description: json["weather"][0]["description"]);
  }
  
}
