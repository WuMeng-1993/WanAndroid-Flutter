import 'package:flutter/material.dart';
import 'package:wan_android_flutter/common/GlobalConfig.dart';

/// 主页
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

  final List<BottomNavigationBarItem> _bottomTabs = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.ac_unit),
      title: Text(GlobalConfig.homeTab),
      backgroundColor: GlobalConfig.colorPrimary
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add),
      title: Text(GlobalConfig.projectTab),
      backgroundColor: GlobalConfig.colorPrimary
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add),
      title: Text(GlobalConfig.homeTab),
      backgroundColor: GlobalConfig.colorPrimary
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add),
      title: Text(GlobalConfig.homeTab),
      backgroundColor: GlobalConfig.colorPrimary
    )
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
        items: _bottomTabs,
        currentIndex: _page,
        fixedColor: GlobalConfig.colorPrimary,
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
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

  void onTap(int index) {

  }


}

