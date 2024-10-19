import 'package:admin_dashboard/extension.dart';
import 'package:admin_dashboard/main_scaffold.dart';
import 'package:flutter/material.dart';

import 'header_widget.dart';
import 'sidebar.dart';

final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class AdaptiveNavigation extends StatelessWidget {
  final List<Destination> destinations;
  final int selectedIndex;
  final void Function(int index) onDestinationSelected;
  final Widget child;
  const AdaptiveNavigation({
    super.key,
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: context.isMobile ? const SideBar() : null,
      body: Row(children: [
        if (context.isDesktop) const SideBar(),
        if (context.isTablet)
          NavigationRail(
            groupAlignment: -1,
            leading: const SizedBox(
              height: 100,
            ),
            labelType: NavigationRailLabelType.all,
            extended: false,
            minExtendedWidth: 180,
            destinations: destinations
                .map((e) => NavigationRailDestination(
                      icon: e.icon,
                      label: FittedBox(
                        child: Text(
                          e.label,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ))
                .toList(),
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
          ),
        const VerticalDivider(thickness: 1, width: 1),
        Expanded(
            child: Column(
          children: [
            HeaderWidget(
              drawerKey: _drawerKey,
            ),
            child,
          ],
        )),
      ]),
    );
    // return LayoutBuilder(
    //   builder: (context, context) {
    //     // Tablet Layout
    //     if (context.maxWidth >= 730) {
    //       return Scaffold(
    //         body: Row(
    //           children: [
    //             if (context.isDesktop)
    //               NavigationDrawer(children: [
    //                 const SizedBox(
    //                   height: 100,
    //                 ),
    //                 ...destinations.map((element) =>
    //                     NavigationDrawerDestination(
    //                         icon: element.icon, label: Text(element.label)))
    //               ]),
    //             if (context.isTablet)
    //               NavigationRail(
    //                 groupAlignment: -1,
    //                 leading: const SizedBox(
    //                   height: 100,
    //                 ),
    //                 labelType: NavigationRailLabelType.all,
    //                 extended: false,
    //                 minExtendedWidth: 180,
    //                 destinations: destinations
    //                     .map((e) => NavigationRailDestination(
    //                           icon: e.icon,
    //                           label: FittedBox(
    //                             child: Text(
    //                               e.label,
    //                               textAlign: TextAlign.center,
    //                             ),
    //                           ),
    //                         ))
    //                     .toList(),
    //                 selectedIndex: selectedIndex,
    //                 onDestinationSelected: onDestinationSelected,
    //               ),
    //             const VerticalDivider(thickness: 1, width: 1),
    //             Expanded(child: child),
    //           ],
    //         ),
    //       );
    //     }
    //     // Mobile Layout
    //     return Scaffold(
    //       appBar: AppBar(
    //         title: Text(destinations[selectedIndex].label),
    //       ),
    //       body: child,
    //       extendBody: true,
    //       drawer: NavigationDrawer(children: [
    //         const SizedBox(
    //           height: 100,
    //         ),
    //         ...destinations.map((element) => NavigationDrawerDestination(
    //             icon: element.icon, label: Text(element.label)))
    //       ]),
    //     );
    //   },
    // );
  }
}
