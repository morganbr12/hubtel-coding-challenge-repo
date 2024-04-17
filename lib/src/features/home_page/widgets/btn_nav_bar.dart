import 'package:flutter/material.dart';

import '../../../core/shared/app_colors/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    required this.onTap,
    required this.currentIndex,
    super.key,
  });

  final Function(int index) onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: AppColors.kPrimaryColor,
      unselectedItemColor: Colors.black,
      onTap: onTap,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home_filled),
        ),
        BottomNavigationBarItem(
          label: 'Send',
          icon: Icon(Icons.send_to_mobile_rounded),
        ),
        BottomNavigationBarItem(
          label: 'History',
          icon: Icon(Icons.history_edu),
        ),
        BottomNavigationBarItem(
          label: 'Schudled',
          icon: Icon(Icons.calendar_month_sharp),
        ),
      ],
    );
  }
}
