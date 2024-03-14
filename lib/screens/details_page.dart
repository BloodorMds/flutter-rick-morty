import 'package:cours_flutter_rick_et_morty/service/characters_service.dart';
import 'package:flutter/material.dart';

import '../model/character.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    // Les profils "en dur" sont stockés dans cette variable
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
            child: Text('Profil - ${character.name}')
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(character.image),
              const SizedBox(height: 20),
              Text("Espèce : ${character.species}"),
              Text("Origine : ${character.origin}"),
              Text("Statut : ${character.status}"),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Retour"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _listElement(character) {
  return ListTile(
    leading: Image.network(character.image),
    title: Text(character.name),
    subtitle: Text(character.species),
  );
}
