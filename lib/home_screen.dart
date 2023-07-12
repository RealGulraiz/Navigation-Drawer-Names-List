import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_ch5/screen_one.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen' ;
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
        backgroundColor: Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // DrawerHeader(
            //     child: Text('Gulraiz'),
            // ),
            const UserAccountsDrawerHeader(
                accountName: Text('RealGulraiz'),
                accountEmail: Text('regulraiz@youtube.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
              decoration: BoxDecoration(
                color: Color(0xff764abc),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home Screen'),
              onTap: (){
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Page One'),
              onTap: (){
                Navigator.pushNamed(context, ScreenOne.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: (){
                Navigator.pushNamed(context, ScreenOne.id);
              },
            ),


          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenOne.id);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ScreenOne()));
              },
              child: Text('Page 1: Name List'),
            ),
          )
        ],
      ),
    );
  }
}
