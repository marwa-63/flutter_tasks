
class CityDetails{ // get latitude and longtude of the city name

  late final double  lat;
  late final double lon ;
  CityDetails({required this.lat ,required this.lon});

  factory CityDetails.fromJson( json )
  {
    return CityDetails(lat: json["lat"], lon: json["lon"]);
  }



}