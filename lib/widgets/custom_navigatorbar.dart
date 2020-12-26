import 'package:flutter/material.dart';

//
// Providers
//
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    // Vars
    //
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOption;

    return BottomNavigationBar(
        onTap: (int i) => uiProvider.setSelectedMenuOpt = i,
        currentIndex: currentIndex,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
          BottomNavigationBarItem(
              icon: Icon(Icons.compass_calibration), label: 'Directions'),
        ]);
  }
}
