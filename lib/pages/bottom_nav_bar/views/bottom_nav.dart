import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:provider/provider.dart';
import 'package:second_project/pages/bottom_nav_bar/provider/botton_nav_controller.dart';

// ignore: camel_case_types
class Bottom_nav extends StatelessWidget {
  const Bottom_nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: context
            .watch<Bottomprovider>()
            .tabItems[context.watch<Bottomprovider>().selectedIndex],
      ),
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.linear,
        selectedIndex: context.watch<Bottomprovider>().selectedIndex,
        showElevation: false,
        onItemSelected: (index) {
          context.read<Bottomprovider>().indexupdate(index);
        },
        items: [
          FlashyTabBarItem(
            icon: const Icon(
              Icons.badge_rounded,
              color: Colors.black,
              size: 22,
            ),
            title: const Text(
              'Home',
              style: TextStyle(fontSize: 15, color: Colors.cyan),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              Icons.local_activity,
              color: Colors.black,
              size: 23,
            ),
            title: const Text(
              'Application',
              style: TextStyle(fontSize: 15, color: Colors.cyan),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
              size: 25,
            ),
            title: const Text(
              'notification',
              style: TextStyle(fontSize: 15, color: Colors.cyan),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              Icons.person,
              color: Colors.black,
              size: 23,
            ),
            title: const Text(
              'profile',
              style: TextStyle(fontSize: 15, color: Colors.cyan),
            ),
          ),
        ],
      ),
    );
  }
}
