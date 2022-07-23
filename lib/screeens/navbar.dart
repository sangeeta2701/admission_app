import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text(
                "ABC",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail:
                  Text("abc@gmail.com", style: TextStyle(color: Colors.black)),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    "https://a0.anyrgb.com/pngimg/1446/328/this-cute-girl-cartoon-characters-cute-cartoon-figures-cute-cartoon-characters-childrens-cute-girl-sexy-girls-bangs-fashion-girl-baby-girl-figures.png",
                    fit: BoxFit.cover,
                    height: 90,
                    width: 90,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.cyan,
              )),
          ListTile(
            leading: Icon(
              Icons.favorite,
              size: 30,
            ),
            title: Text(
              "Favorites",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              size: 30,
            ),
            title: Text(
              "Share",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 30,
            ),
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              size: 30,
            ),
            title: Text(
              "Exit",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
