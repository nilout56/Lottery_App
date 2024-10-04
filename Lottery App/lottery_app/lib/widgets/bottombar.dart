import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../screens/homepage.dart';
import '../screens/share.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  void initState() {
    super.initState();
  }

  int index = 0;
  final List<Widget> _currentPage = [
    const HomePage(),
    const SharePage(),
    // ShowChart(),
    // const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _currentPage[index],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
                surfaceTintColor: const Color(0xffffffff),
                backgroundColor: const Color(0xffffffff),
                indicatorColor: const Color(0xfff5baba),
                labelTextStyle: MaterialStateProperty.all(const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'NotoSansLao',
                ))),
            child: NavigationBar(
              height: 80,
              backgroundColor: const Color(0xffffffff),
              selectedIndex: index,
              onDestinationSelected: (index) =>
                  setState(() => this.index = index),
              destinations: [
                NavigationDestination(
                  icon: const Icon(
                    Icons.home,
                    color: Colors.redAccent,
                  ),
                  label: 'app.homepage'.tr(),
                ),
                NavigationDestination(
                  icon: const Icon(
                    Icons.receipt_long_rounded,
                    color: Colors.redAccent,
                  ),
                  label: 'app.share'.tr(),
                ),
                NavigationDestination(
                  icon: const Icon(
                    Icons.bar_chart,
                    color: Colors.redAccent,
                  ),
                  label: 'app.bill'.tr(),
                ),
                NavigationDestination(
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.redAccent,
                  ),
                  label: 'app.profile'.tr(),
                ),
              ],
            ),
          ),
        ));
  }
}
