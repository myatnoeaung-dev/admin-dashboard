import 'package:flutter/material.dart';

import 'gaps.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Divider(),
        gapH16,
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Text("Dashboard"),
                Text("Users"),
                Text("Invoices"),
                Text("Settings"),
                Text("Help"),
              ],
            ),
          ),
        )
      ])),
    );
  }
}
