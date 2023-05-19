import 'package:flutter/material.dart';
class NavigationBarComp extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final List<NavigationDestination> destinations;

  const NavigationBarComp({super.key, 
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.destinations,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onDestinationSelected,
      items: destinations
          .map((destination) => BottomNavigationBarItem(
                icon: destination.icon,
                label: destination.label,
              ))
          .toList(),
    );
  }
}
