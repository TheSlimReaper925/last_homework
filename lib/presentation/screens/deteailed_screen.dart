import 'package:flutter/material.dart';
import 'package:last_homework/data/repository/planets_repository.dart';

class DetailedScreen extends StatelessWidget {
  const DetailedScreen({Key? key}) : super(key: key);
  static const routeName = "/wonder-detail";

  @override
  Widget build(BuildContext context) {
    final Map parsedData = ModalRoute.of(context)!.settings.arguments as Map;
    final planet = parsedData["planet"];
    final url = planet.homeworld.toString();
    return Scaffold(
      appBar: AppBar(
        title: const Text('detailed Page'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: FutureBuilder(
        future: PlanetRepository().fetchPlanet(url),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final planet = snapshot.data as Map;
            return SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Name:",
                        style: TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 20),
                      ),
                      const Padding(padding: EdgeInsets.all(50)),
                      Text(
                        planet["name"].toString(),
                        style: const TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Diameter:",
                        style: TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 20),
                      ),
                      const Padding(padding: EdgeInsets.all(50)),
                      Text(
                        planet["diameter"].toString(),
                        style: const TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Climate:",
                        style: TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 20),
                      ),
                      const Padding(padding: EdgeInsets.all(50)),
                      Text(
                        planet["climate"].toString(),
                        style: const TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Gravity:",
                        style: TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 20),
                      ),
                      const Padding(padding: EdgeInsets.all(50)),
                      Text(
                        planet["gravity"].toString(),
                        style: const TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Terrain:",
                        style: TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 20),
                      ),
                      const Padding(padding: EdgeInsets.all(50)),
                      Text(
                        planet["terrain"].toString(),
                        style: const TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Population:",
                        style: TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 20),
                      ),
                      const Padding(padding: EdgeInsets.all(50)),
                      Text(
                        planet["population"].toString(),
                        style: const TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: Text("loading..."),
            );
          }
        },
      ),
    );
  }
}
