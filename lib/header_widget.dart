import 'package:admin_dashboard/extension.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.drawerKey});
  final GlobalKey<ScaffoldState> drawerKey;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(children: [
      if (context.isMobile)
        IconButton(
          onPressed: () {
            drawerKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
    ]));
  }
}
