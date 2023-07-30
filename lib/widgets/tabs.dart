import 'package:flutter/material.dart';

class TabsWidget extends StatelessWidget {
  const TabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
              indicatorColor: Color.fromARGB(255, 0, 0, 0),
              indicatorPadding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3),
                  insets: EdgeInsets.symmetric(horizontal: 25)),
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'pics1',
                ),
                Tab(
                  text: 'pics2',
                ),
                Tab(
                  text: 'pics3',
                ),
                Tab(
                  text: 'pics4',
                ),
              ],
    );
  }
}