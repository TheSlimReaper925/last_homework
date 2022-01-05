import 'package:dio/dio.dart';
import 'package:last_homework/data/models/people.dart';

class PeopleRepository {
  Dio dio = Dio();
  List<People>? peopleList = [];
  Map<String, dynamic> convertedPeople = {};

  fetchPeople() async {
    final response = await dio.get('https://swapi.dev/api/people/');
    if (response.statusCode == 200) {
      response.data['results'].forEach((people) {
        convertedPeople = People().toJson(people);
        peopleList!.add(People.fromJson(people));
      });
      return peopleList;
    }
  }
}
