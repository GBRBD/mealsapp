import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget _buildListTile(String title, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: () {},
    );
  }

  Widget _buildDrawerHeader(BuildContext context) {
    ThemeData td = Theme.of(context);

    return Container(
      height: 120,
      width: double.infinity,
      color: td.accentColor,
      padding: EdgeInsets.all(20),
      alignment: Alignment.centerLeft,
      child: Text(
        'Cooking Up!',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 30,
          color: td.primaryColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeading(),
          SizedBox(
            height: 20,
          ),
          _buildListTile('Meals', Icons.restaurant),
          _buildListTile('Filters', Icons.settings),
        ],
      ),
    );
  }
}

class DrawerHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData td = Theme.of(context);

    return Container(
      height: 120,
      width: double.infinity,
      color: td.accentColor,
      padding: EdgeInsets.all(20),
      alignment: Alignment.centerLeft,
      child: Text(
        'Cooking Up!',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 30,
          color: td.primaryColor,
        ),
      ),
    );
  }
}
