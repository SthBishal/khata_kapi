import 'dart:io';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          width: 80,
        ),
        backgroundColor: Color.fromARGB(255, 148, 121, 163),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                exit(0);
              },
              child: const Icon(
                Icons.cancel,
                size: 26.0,
                color: Colors.amberAccent,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 148, 121, 163),
              ),
              accountName: Text(
                "Username",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              accountEmail: Text(
                "Phone",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              iconColor: Color.fromARGB(255, 148, 121, 163),
              // tileColor:  Color.fromARGB(255, 24, 210, 213),
              // textColor: Colors.white,
              leading: const Icon(
                Icons.home,
              ),
              title: const Text(
                'Items',
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              iconColor: Color.fromARGB(255, 148, 121, 163),
              // tileColor:  Color.fromARGB(255, 24, 210, 213),
              // textColor: Colors.white,
              leading: const Icon(
                Icons.home,
              ),
              title: const Text(
                'Items',
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              iconColor: Color.fromARGB(255, 148, 121, 163),
              // tileColor:  Color.fromARGB(255, 24, 210, 213),
              // textColor: Colors.white,
              leading: const Icon(
                Icons.home,
              ),
              title: const Text(
                'Items',
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.amber,
                gradient: LinearGradient(
                  colors: [
                    (Color.fromARGB(255, 148, 121, 163)),
                    Color.fromARGB(255, 24, 210, 213)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade600,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.watch_later, 
                          color: Colors.white),

                        label: const Text(
                          "Reminders",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ), //label text
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 35,
                        ),
                           SizedBox(
                      width: 150,
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade600,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.person, 
                          color: Colors.white),
                          
                        label: const Text(
                          "Customers",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ), //label text
                      ),
                    ),
                        const SizedBox(
                          width: 25,
                        ),
                           SizedBox(
                      width: 150,
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade600,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.person, 
                          color: Colors.white),
                          
                        label: const Text(
                          "Suppliers",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ), //label text
                      ),
                    ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade600,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
