import 'package:cours_flutter_rick_et_morty/screens/home.dart';
import 'package:cours_flutter_rick_et_morty/screens/episodes.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;

  const CustomBottomNavBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Acceuil",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.folder_copy_outlined),
          label: "Episodes",
        ),
      ],
      currentIndex: selectedIndex,
      onTap: (index) => _navigate(context, index),
    );
  }

  _navigate(BuildContext context, int index) {
    late Widget destination;

    switch (index) {
      case 0:
        destination = const Home();
        break;
      case 1:
        destination = const Episodes();
        break;
    }

    // Implémentation simple de la navigation
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => destination,
      ),
    );
  }
}