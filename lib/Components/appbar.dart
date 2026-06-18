import 'package:flutter/material.dart';

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    PageController controller = PageController(
      initialPage: 0,
      viewportFraction: 0.8,
    );

    List<Color> colors = [
      Colors.red,
      Colors.blue,
      Colors.green,
    ];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("My App"),
          centerTitle: true,
          actions: [
            Icon(Icons.search),
          ],
          backgroundColor: Colors.red,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.lightBlue,
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.apps),
                text: "Menu",
              ),
              Tab(
                icon: Icon(Icons.image),
                text: "Image",
              ),
              Tab(
                icon: Icon(Icons.info),
                text: "Info",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: PageView.builder(
                controller: controller,
                itemCount: colors.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: colors[index],
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                  );
                },
              ),
            ),
            Center(
              child: Text("Image"),
            ),
            Center(
              child: Text("Info"),
            ),
          ],
        ),
      ),
    );
  }
}