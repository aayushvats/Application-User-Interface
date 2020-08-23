import 'package:MyApp/src/Utils/Database.dart';
import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/fryo_icons.dart';
import './SignInPage.dart';
import './SignUpPage.dart';
import '../shared/users.dart';

class Dashboard extends StatefulWidget {
  final String pageTitle;

  Dashboard({Key key, this.pageTitle}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _tabs = [
      Text('Tab1'),
      Text('Tab2'),
      Text('Tab3'),
      profilepage(context), //Tab4
      Text('Tab5'),
    ];

    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          centerTitle: true,
          elevation: 3,
          leading: IconButton(
            onPressed: () {},
            iconSize: 21,
            icon: Icon(Icons.menu),
          ),
          backgroundColor: primaryColor,
          title:
              Text('AppUI', style: logoWhiteStyle, textAlign: TextAlign.center),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              iconSize: 21,
              icon: Icon(Fryo.magnifier),
            )
          ],
        ),
        body: _tabs[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet),
                title: Text(
                  'Tab 1',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance),
                title: Text(
                  'Tab 2',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(Fryo.heart),
                title: Text(
                  'Tab 3',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(Fryo.user),
                title: Text(
                  "Tan 4",
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text(
                  'Tab 5',
                  style: tabLinkStyle,
                ))
          ],
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.green[600],
          onTap: _onItemTapped,
        ));
  }

  Widget profilepage(BuildContext context) {
    //var thisuser = new User();
    //thisuser = DBProvider.db.getUser() as User;
    //name = thisuser.name;
    //username = thisuser.username;
    //password = thisuser.password;
    //email = thisuser.email;
    return (
    Center(child: Text("\n\n $name is your name and username is $username and your password is $password with email $email"))
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}