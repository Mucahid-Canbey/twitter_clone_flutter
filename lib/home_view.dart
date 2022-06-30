import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final String _home = 'Home';
  final int _defaultTabLenght = 4;
  final String _gitHubUrl = 'https://avatars.githubusercontent.com/u/58268027?v=4';
  late ScrollController scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      print(scrollController.offset);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _fabButton(),
      body: SafeArea(
        child: DefaultTabController(
            length: _defaultTabLenght,
            child: Column(
              children: [
                _containerAppBar(),
                _tabBarItems(),
                _expandedListView(),
              ],
            )),
      ),
    );
  }

  Container _containerAppBar() {
    return Container(height: 50, child: _appBar());
  }

  TabBar _tabBarItems() {
    return const TabBar(
      tabs: [
        Tab(
          icon: Icon(Icons.dashboard),
        ),
        Tab(
          icon: Icon(Icons.dashboard),
        ),
        Tab(
          icon: Icon(Icons.dashboard),
        ),
        Tab(
          icon: Icon(Icons.dashboard),
        ),
      ],
    );
  }

  Expanded _expandedListView() {
    return Expanded(child: _listView);
  }

  @override
  // TODO: implement widget
  ListView get _listView => ListView.builder(
      itemCount: 10,
      controller: scrollController,
      itemBuilder: (context, index) {
        return Text('data');
      });
//AppBar
  AppBar _appBar() {
    return AppBar(
      centerTitle: false,
      title: _appBarItems(),
      elevation: 0,
    );
  }

// AppBar Items
  Wrap _appBarItems() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      //'spacing' Boşluk
      spacing: 10,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(_gitHubUrl),
        ),
        Text(
          _home,
          style: titleTextStyle,
        )
      ],
    );
  }

//Icon Button
  FloatingActionButton _fabButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add_circle_outlined),
    );
  }
}

const titleTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: Colors.black,
//'letterSpacing' Harflerin arasına boşluk atar.
    letterSpacing: 1);
