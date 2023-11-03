
class ApiConstanc{
  static const  String baseUrl =  "https://api.themoviedb.org/3" ;
  static const String  apiKey = "84e693178ac17688cf3bec64037b4608" ;

  static const String nowPlayingMoviesPath = "$baseUrl/movie/now_playing?api_key=$apiKey" ;
  static const String popularMoviesPath = "$baseUrl/movie/popular?api_key=$apiKey" ;
  static const String topRatedMoviesPath = "$baseUrl/movie/top_rated?api_key=$apiKey" ;
}