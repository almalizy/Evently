import 'package:evently/l10n/app_localizations.dart';
import 'package:evently/routing/app-routes.dart';
import 'package:evently/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'tabs/home/home.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int selectedIndex = 0;
  List<Widget> tabs = const [
    Home(),
    // Maps(),
    // Favourite(),
    // Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: buildFab(),
      body: tabs[selectedIndex],
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  Widget buildFab() {
    return FloatingActionButton(
      onPressed: _goToCreateEventScreen,
      child: const Icon(Icons.add),
    );
  }

  void _goToCreateEventScreen() {
    Navigator.pushNamed(context, RoutesNames.createEvent);
  }

  Widget buildBottomNavBar() {
    return BottomAppBar(
      notchMargin: 8,
      child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: _onTap,
          items: [
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(AppSvgs.homeIcon),
                icon: SvgPicture.asset(AppSvgs.homeIcon),
                label: AppLocalizations.of(context)!.home),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(AppSvgs.mapIcon),
                icon: SvgPicture.asset(AppSvgs.mapIcon),
                label: AppLocalizations.of(context)!.map),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(AppSvgs.userIcon),
                icon: SvgPicture.asset(AppSvgs.userIcon),
                label: AppLocalizations.of(context)!.favourite),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(AppSvgs.favoriteIcon),
                icon: SvgPicture.asset(AppSvgs.favoriteIcon),
                label: AppLocalizations.of(context)!.profile),
          ]),
    );
  }

  void _onTap(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }
}