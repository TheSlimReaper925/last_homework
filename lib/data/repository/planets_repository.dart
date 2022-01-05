import 'package:dio/dio.dart';
import 'package:last_homework/data/models/planets.dart';

class PlanetRepository {
  Dio dio = Dio();
  List<Planet>? planetsList = [];

  fetchPlanet(String url) async {
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      // planetsList!.add(Planet.fromJson(response.data));
      return response.data;
    }
  }
}
