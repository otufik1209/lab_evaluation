import 'package:flutter/material.dart';

void main() => runApp(OneCardApp());

class OneCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '1Card',
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  final String userName = "Toufik Munshi";
  final String studentId = "221-15-5413";
  final String email = "munshi15-5413@diu.edu.bd";
  final String balance = "****";
  final String lastLogin = "1:31pm on Saturday 1st February 2025";
  final String lastLogout = "6:23pm on Friday 27th December 2024";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text('1Card'),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child:
                        Icon(Icons.person, size: 30, color: Colors.deepPurple),
                  ),
                  SizedBox(height: 8),
                  Text(userName, style: TextStyle(color: Colors.white)),
                  Text(email,
                      style: TextStyle(color: Colors.white70, fontSize: 12)),
                ],
              ),
            ),
            _simpleDrawerItem(Icons.dashboard, "Dashboard"),
            _simpleDrawerItem(Icons.person, "Profile"),
            _simpleDrawerItem(Icons.notifications, "DIU Notice"),
            _simpleDrawerItem(Icons.directions_bus, "Bus Service"),
            _simpleDrawerItem(Icons.card_giftcard, "Promo Code"),
            _simpleDrawerItem(Icons.location_on, "Agent Location"),
            _simpleDrawerItem(Icons.share, "Contact Sharing"),
            _simpleDrawerItem(Icons.settings, "Settings"),
            _simpleDrawerItem(Icons.help_outline, "Help"),
            _simpleDrawerItem(Icons.info_outline, "About"),
            _simpleDrawerItem(Icons.help, "FAQ"),
            _simpleDrawerItem(Icons.logout, "Sign Out"),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.deepPurple.shade400,
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _navTab(Icons.dashboard, 'DashBoard'),
                    _navTab(Icons.attach_money, 'Services'),
                    _navTab(Icons.swap_horiz, 'Transaction'),
                    _navTab(Icons.credit_card, 'Virtual ID'),
                  ],
                ),
                Divider(color: Colors.white, height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.person, size: 30),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(userName,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text(studentId),
                          Text("Active",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 12)),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        margin: EdgeInsets.only(left: 16, right: 8),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(balance,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            Text("Usable Balance",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 60,
                        margin: EdgeInsets.only(right: 16, left: 8),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.qr_code,
                            color: Colors.white,
                            size: 30,
                          ),
                          label: Text("Scan Me",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            alignment: Alignment.centerLeft,
            color: Colors.grey[200],
            child: Text("Recent Activities",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.event_note, color: Colors.blue),
                  title: Text(lastLogin),
                  subtitle: Text("Last Login (24069RA21C)"),
                ),
                ListTile(
                  leading: Icon(Icons.event_note, color: Colors.blue),
                  title: Text(lastLogout),
                  subtitle: Text("Last Logout (24069RA21C)"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _navTab(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        SizedBox(height: 4),
        Text(label, style: TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }

  Widget _simpleDrawerItem(IconData icon, String label) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      onTap: () {},
    );
  }
}
