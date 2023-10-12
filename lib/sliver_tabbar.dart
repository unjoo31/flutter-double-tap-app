import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _SliversScreenState createState() => _SliversScreenState();
}

class _SliversScreenState extends State<HomePage>
    with TickerProviderStateMixin {
  Widget build(BuildContext context) {
    late final TabController _tabController;

    @override
    void initState() {
      super.initState();
      _tabController = TabController(length: 3, vsync: this);
    }

    return Scaffold(
      // ScrollView의 종류로 Sliver와 같이 사용된다.
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: AppBar(
              title: const Text('TabBar Sample'),
              bottom: TabBar(
                controller: _tabController,
                tabs: const <Widget>[
                  Tab(
                    icon: Icon(Icons.cloud_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.beach_access_sharp),
                  ),
                  Tab(
                    icon: Icon(Icons.brightness_5_sharp),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
