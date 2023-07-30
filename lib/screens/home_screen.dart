import 'package:flutter/material.dart';
import 'package:task1/widgets/bottom_sheet_widget.dart';

import '../model/posts.dart';
import '../service/api_handler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return TabBarView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: FutureBuilder<Post>(
              future: fetchPosts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return GridView.builder(
                    itemCount: snapshot.data!.posts.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing:
                          MediaQuery.of(context).size.height * 0.02,
                      childAspectRatio:
                          MediaQuery.of(context).size.aspectRatio * 3 / 3,
                    ),
                    itemBuilder: ((context, index) {
                      return snapshot.data == null
                          ? const Text('error')
                          : Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: constraints.maxWidth * 0.02,
                                    right: constraints.maxWidth * 0.02,
                                  ),
                                  child: SizedBox(
                                    height: constraints.maxHeight * 0.46,
                                    width: constraints.maxWidth * 0.46,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        "https://image.dummyjson.com/350x200/?text=${snapshot.data!.posts[index].title}",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: constraints.maxWidth * 0.03,
                                    right: constraints.maxWidth * 0.02,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          snapshot.data!.posts[index].title,
                                          softWrap: false,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                      const BottomSheetWidget(),
                                    ],
                                  ),
                                )
                              ],
                            );
                    }),
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
            const Text('wdnewb'),
            const Text('wdnewb'),
            const Text('wdnewb'),
            const Text('wdnewb'),
        ],
      );
    });
  }
}
