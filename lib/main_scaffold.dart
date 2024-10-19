import 'package:admin_dashboard/adaptive_navigation.dart';
import 'package:flutter/material.dart';

class Destination {
  const Destination({
    required this.route,
    required this.label,
    required this.icon,
  });

  final String route;
  final String label;
  final Widget icon;
}

List<Destination> destinationsList = [
  const Destination(
    label: "Home",
    icon: Icon(Icons.home),
    route: '',
  ),
  const Destination(
    label: "Users",
    icon: Icon(Icons.person),
    route: '',
  ),
  const Destination(
    label: "Setting",
    icon: Icon(Icons.settings),
    route: '',
  ),
  const Destination(
    label: "More",
    icon: Icon(Icons.more),
    route: '',
  ),
];

class MainScaffold extends StatelessWidget {
  const MainScaffold({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AdaptiveNavigation(
        destinations: destinationsList,
        selectedIndex: 1,
        onDestinationSelected: (index) {},
        child: child);
  }
}
