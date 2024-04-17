import 'package:flutter/material.dart';

import '../../core/bloc_provider/home_outlet.dart';
import '../home_page/widgets/btnNavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _getSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _bodyElement = <Widget>[
    homeOutlet(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyElement[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        onTap: (index) => _getSelectedIndex(index),
        currentIndex: _selectedIndex,
      ),
    );
  }
}
