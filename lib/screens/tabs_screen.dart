import 'package:flutter/material.dart';
import 'package:mealsapp/screens/categories.dart';
import 'package:mealsapp/screens/favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget> _pages = [CategoriesScreen(), FavoritesScreen()];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        unselectedItemColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }

  //Top tabbar

  // @override
  // Widget build(BuildContext context) {
  //   return DefaultTabController(
  //     length: 2,
  //     child: Scaffold(
  //       appBar: AppBar(
  //         title: Text('Meals'),
  //         bottom: TabBar(

  //           tabs: <Widget>[
  //             Tab(
  //               icon: Icon(Icons.category),
  //               text: 'Categories',
  //             ),
  //             Tab(
  //               icon: Icon(Icons.star),
  //               text: 'Favorites',
  //             ),
  //           ],
  //         ),
  //       ),
  //       body: TabBarView(
  //         children: <Widget>[
  //           CategoriesScreen(),
  //           FavoritesScreen(),
  //         ],
  //       ),
  //     ),
  //   );
  // }

}