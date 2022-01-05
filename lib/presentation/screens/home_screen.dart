import 'package:flutter/material.dart';
import 'package:last_homework/data/models/people.dart';
import 'package:last_homework/data/repository/people_repository.dart';
import 'package:last_homework/presentation/screens/deteailed_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("People"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: FutureBuilder(
        future: PeopleRepository().fetchPeople(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final peopleList = snapshot.data as List<People>;
            return ListView.builder(
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(30),
                    child: ListTile(
                      key: UniqueKey(),
                      onTap: () => {
                        Navigator.pushNamed(context, DetailedScreen.routeName,
                            arguments: {"planet": peopleList[index]})
                      },
                      title: Text(peopleList[index].name.toString()),
                      subtitle: Text(peopleList[index].homeworld.toString()),
                    ),
                  );
                },
                itemCount: peopleList.length);
          } else {
            return const Center(
              child: Text("Loading..."),
            );
          }
        },
      ),
    );
  }
}
