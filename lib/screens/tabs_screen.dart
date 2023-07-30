import 'package:flutter/material.dart';
import 'package:task1/screens/home_screen.dart';
import 'package:task1/widgets/tabs.dart';
import '../model/posts.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Post> futurePosts;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    //  fetchPosts().then((value) => futurePosts=value);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: EdgeInsets.only(
              top: 25,
            ),
            child: TabsWidget(),
          ),
        ),
        body: HomeScreen(),
      );
  }
}
