import 'package:flutter/material.dart';
import 'package:qr_reader/pages/directions_page.dart';

//
// Pages
//
import 'package:qr_reader/pages/maps_page.dart';

//
// Widgets
//
import 'package:qr_reader/widgets/custom_navigatorbar.dart';
import 'package:qr_reader/widgets/scan_button.dart';

//
// Providers
//
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [IconButton(icon: Icon(Icons.delete), onPressed: () {})],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    // Vars
    //
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOption;

    switch (currentIndex) {
      case 1:
        return DirectionsPage();
      default:
        return MapsPage();
    }
  }
}
