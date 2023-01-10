import 'package:flutter/material.dart';

import 'login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Text("MyApp"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Nong_TaWan"),
              accountEmail: Text("Nong_TaWan@gmail.com"),
              currentAccountPicture: CircleAvatar(
                //child: Icon(Icons.android),
                backgroundImage: NetworkImage(
                    "https://scontent.fbkk21-1.fna.fbcdn.net/v/t1.6435-9/94419292_2986972614752277_499757154702458880_n.png?_nc_cat=105&ccb=1-7&_nc_sid=7aed08&_nc_ohc=5XCinfImVq4AX_HcslC&_nc_ht=scontent.fbkk21-1.fna&oh=00_AfD3_cJfsBBi-uO7KnUq_DQAej7lfwMyAcs2y2HaBaEgWg&oe=63E45BCC"),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.indigo,
                size: 30,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.login,
                color: Colors.indigo,
                size: 30,
              ),
              title: Text(
                'Login',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                //Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
