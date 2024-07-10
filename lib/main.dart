import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        darkTheme: ThemeData(primarySwatch: Colors.grey),
        color: Colors.amber,
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'My Inventory App',
        ),
        titleSpacing: 10,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar('Comments', context);
              },
              icon: Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                MySnackBar('Search', context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                MySnackBar('Settings', context);
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                MySnackBar('Email', context);
              },
              icon: Icon(Icons.email)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: () {
          MySnackBar('I am floting action button', context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar('I am home bottom menu', context);
          }
          if (index == 1) {
            MySnackBar('I am contact bottom menu', context);
          }
          if (index == 2) {
            MySnackBar('I am profile bottom menu', context);
          }
        },
      ),
       drawer: Drawer(

        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child:UserAccountsDrawerHeader(

              decoration: BoxDecoration(color: Colors.white),
              accountName: Text('Mustafizur Rahman',style: TextStyle(color: Colors.black),),
              accountEmail: Text('mustafizurkpi15@gmail.com',style: TextStyle(color:Colors.black ),),
              currentAccountPicture:Image.asset('assets/images/img.png'),
                  onDetailsPressed: (){MySnackBar('This is my profile', context);},

            )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                MySnackBar('Home', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text('Contact'),
              onTap: () {
                MySnackBar('Contact', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              onTap: () {
                MySnackBar('Phone', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              onTap: () {
                MySnackBar('Email', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                MySnackBar('Profile', context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(

        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child:UserAccountsDrawerHeader(

                  decoration: BoxDecoration(color: Colors.white),
                  accountName: Text('Mustafizur Rahman',style: TextStyle(color: Colors.black),),
                  accountEmail: Text('mustafizurkpi15@gmail.com',style: TextStyle(color:Colors.black ),),
                  currentAccountPicture:Image.asset('assets/images/img.png'),
                  onDetailsPressed: (){MySnackBar('This is my profile', context);},

                )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                MySnackBar('Home', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text('Contact'),
              onTap: () {
                MySnackBar('Contact', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              onTap: () {
                MySnackBar('Phone', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              onTap: () {
                MySnackBar('Email', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                MySnackBar('Profile', context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
