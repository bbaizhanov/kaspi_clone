import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ui_constant.dart';

class HomeView extends StatefulWidget {
  static route() => MaterialPageRoute(
    builder: (context) => const HomeView(),
  );
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _page = 0;
  void onPageChange(int index) {
    setState(() {
      _page = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _page,
        children: UIConstants.bottomTabBarPages,
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: _page,
        onTap: onPageChange,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(_page==0?Icons.home_outlined:Icons.home,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(_page==1?Icons.message_outlined:Icons.message,
              color: Colors.red,),
          ),
          BottomNavigationBarItem(
            icon: Icon(_page==0?Icons.menu_outlined:Icons.menu,
              color: Colors.red,),
          ),
        ],
      ),
    );
  }
}