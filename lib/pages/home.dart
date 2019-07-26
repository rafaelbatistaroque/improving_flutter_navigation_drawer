import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'aulas.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      drawer: _buildDrawer(context),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text("App Navigation Drawer"),
      centerTitle: true,
      elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
    );
  }

  Widget _buildBody() {
    return Container(
        child: Center(
      child: Text("Home App Menu Drawer"),
    ));
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Rafael Batista"),
            accountEmail: Text("maranara.rafa@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Text(
                "RB",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home", style: TextStyle(fontSize: 18.0)),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text(modulos[0], style: TextStyle(fontSize: 18.0)),
            onTap: () => Navigator.of(context).push(PageModulo(modulos[0])),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text(modulos[1], style: TextStyle(fontSize: 18.0)),
            onTap: () => Navigator.of(context).push(PageModulo(modulos[1])),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text(modulos[2], style: TextStyle(fontSize: 18.0)),
            onTap: () => Navigator.of(context).push(PageModulo(modulos[2])),
          ),
          ListTile(
              leading: Icon(Icons.book),
              title: Text(modulos[3], style: TextStyle(fontSize: 18.0)),
              onTap: () => Navigator.of(context).push(PageModulo(modulos[3]))),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text(
              "Sair",
              style: TextStyle(fontSize: 18.0),
            ),
          )
        ],
      ),
    );
  }

  final List<String> modulos = [
    "Propedêutica",
    "História da Igreja I",
    "História da Igreja II",
    "História da Igreja III"
  ];
}
