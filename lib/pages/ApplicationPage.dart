import 'package:flutter/material.dart';
import 'package:wan_android_flutter/common/GlobalConfig.dart';

class ApplicationPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ApplicationPage();
  }

}

class _ApplicationPage extends State<ApplicationPage> {

  int _page = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: this._page);
  }

  final List<BottomNavigationBarItem> _bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(Icons.ac_unit),
      title: Text(GlobalConfig.homeTab),
      backgroundColor: GlobalConfig.colorPrimary
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[

        ],
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: ,
      ),
    );
  }

  @override
  void dispose() {

  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

}

