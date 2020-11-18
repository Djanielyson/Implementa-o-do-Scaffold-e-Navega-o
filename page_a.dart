import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste/Atividade%202/page_settings.dart';
import 'page_b.dart';
import 'page_home.dart';

class PageA extends StatefulWidget {
  @override
  _PageAState createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text("Silvio Santos\nsantos@gmail.com", style: TextStyle(
                  color: Colors.white,
                ),),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text(
                  'Page A',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                subtitle: Text("Page B"),
                leading: Icon(Icons.save),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  //Navigator.pop(context);
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => PageA()));
                },
              ),
              ListTile(
                title: Text(
                  'Page B',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                subtitle: Text("Permite editar"),
                leading: Icon(Icons.edit),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  //Navigator.pop(context);
                  Navigator.push(context, new MaterialPageRoute(builder: (contex)=> PageB()));
                },
              ),
            ],
          )),

      appBar: AppBar(
        title: ListTile(
          title: Text(
            "App Exemplo",
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.input, color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),

            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        selectedItemColor: Colors.red,
        onTap:(covariant) {
          setState(() {
            Navigator.push(context, new MaterialPageRoute(builder: (context)=> PageHome()));
          });
        },
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        color: Colors.red[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Page A",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Icon(Icons.add_circle, color: Colors.red, size: 80),
          ],
        ),
      ),
    );
  }
}
