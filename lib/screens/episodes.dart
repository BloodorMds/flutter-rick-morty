import 'package:flutter/material.dart';
import 'package:cours_flutter_rick_et_morty/service/episode_service.dart';

import 'package:http/http.dart' as http;

import '../shared/custom_bottom_navbar.dart';


class Episodes extends StatelessWidget {
  const Episodes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(selectedIndex: 1),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Rick & Morty - Liste des épisodes"),
        ),
        body: FutureBuilder(
            future: EpisodesService().fetchEpisodes(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var episodes = snapshot.data!;
                return ListView.builder(
                  itemCount: episodes.length,
                  itemBuilder: (context, index) =>
                      _listElement(context, episodes[index]),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else {
                // Par défaut, afficher un Spinner
                return const Center(child: CircularProgressIndicator());
              }
            })
    );
  }
}

Widget _listElement(context, episode) {
  return ListTile(
    leading: Text(episode.episode),
    title: Text(episode.name),
    subtitle: Text(episode.air_date),
  );
}
