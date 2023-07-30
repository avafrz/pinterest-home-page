import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task1/screens/other_tabs.dart';
import 'package:task1/screens/tabs_screen.dart';


class NavigationBarWidget extends StatefulWidget {
  static const routeName = '/tabs_screen';
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  late List<Map<String, Object>> _pages;

  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': const TabsScreen(),
        'title': 'Home',
      },
      {
        'page': const OtherTabs(),
        'title': 'Search',
      },
      {
        'page': const OtherTabs(),
        'title': 'Add',
      },
      {
        'page': const OtherTabs(),
        'title': 'Menu',
      },
      {
        'page': const OtherTabs(),
        'title': 'Menu',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        unselectedItemColor: const Color.fromARGB(255, 157, 157, 157),
        selectedItemColor: Colors.black,
        onTap: _selectPage,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                left: 30,
              ),
              child: Icon(FontAwesomeIcons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.add),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidComment),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                right: 30,
              ),
              child: Icon(Icons.account_circle),
            ),
            label: 'account',
          ),
        ],
      ),
    );
  }
}
