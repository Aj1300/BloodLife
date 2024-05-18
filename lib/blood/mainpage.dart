import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/blood/navbar/donation/donationpage.dart';
import 'package:flutter_application_1/blood/navbar/requests/requestpage.dart';
import 'package:flutter_application_1/blood/navbar/userpage.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Demo App", home: MyWidget());
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int indexnum = 0;
  List pages = [
    DonationPage(),
    RequestPage(),
    UserPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(""),
              accountEmail: Text(""),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 198, 194, 194),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU-LIBBaEINrEXTQTuCxyavJwv7lFhjfamiQ&usqp=CAU'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            /* ListTile(
              leading: Icon(Icons.logout),
              iconColor: Colors.red,
              title: Text(
                "Log out",
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.red,
              onTap: () => FirebaseAuth.instance.signOut(),
            )*/
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("BL admin"),
        foregroundColor: Colors.red,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          );
        }),
        elevation: 0,
      ),
      body: pages[indexnum],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54.withOpacity(.5),
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded),
              label: "donators ready",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.mark_email_unread_outlined),
              label: "requests",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "users",
              backgroundColor: Colors.white),
        ],
        currentIndex: indexnum,
        onTap: (int index) {
          setState(() {
            indexnum = index;
          });
        },
      ),
    );
  }
}
