import 'package:cours_flutter_rick_et_morty/screens/details_page.dart';
import 'package:cours_flutter_rick_et_morty/service/characters_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../shared/custom_bottom_navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Les profils "en dur" sont stockés dans cette variable
    var service = CharactersService();

    return Scaffold(
        bottomNavigationBar: const CustomBottomNavBar(selectedIndex: 0),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Rick & Morty - Profiler"),
        ),
        body: FutureBuilder(
            future: CharactersService().fetchCharacters(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var characters = snapshot.data!;
                return ListView.builder(
                  itemCount: characters.length,
                  itemBuilder: (context, index) =>
                      _listElement(context, characters[index]),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else {
                // Par défaut, afficher un Spinner
                return const Center(child: CircularProgressIndicator());
              }
            }));
  }
}

Widget _listElement(context, character) {
  return ListTile(
    leading: Image.network(character.image),
    title: Text(character.name),
    subtitle: Text(character.species),
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsPage(character: character),
      ),
    ),
  );
}
