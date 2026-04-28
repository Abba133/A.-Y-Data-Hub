import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
home: Dashboard(),
);
}
}

// ---------------- DASHBOARD ----------------
class Dashboard extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text("A.Y Data Hub")),
body: Column(
children: [
Card(
margin: EdgeInsets.all(20),
child: ListTile(
title: Text("Wallet Balance"),
subtitle: Text("₦5,000"),
),
),

      SizedBox(height: 20),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => BuyData()));
            },
            child: Text("Buy Data"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Wallet()));
            },
            child: Text("Wallet"),
          ),
        ],
      )
    ],
  ),
);

}
}

// ---------------- BUY DATA ----------------
class BuyData extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text("Buy Data")),
body: ListView(
children: [
ListTile(title: Text("MTN - 1GB - ₦300")),
ListTile(title: Text("Airtel - 1GB - ₦300")),
ListTile(title: Text("Glo - 1GB - ₦300")),
ListTile(title: Text("9mobile - 1GB - ₦300")),
],
),
);
}
}

// ---------------- WALLET ----------------
class Wallet extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text("Wallet")),
body: Column(
children: [
Card(
margin: EdgeInsets.all(20),
child: ListTile(
title: Text("Balance"),
subtitle: Text("₦5,000"),
),
),

      ElevatedButton(
        onPressed: () {},
        child: Text("Add Money"),
      )
    ],
  ),
);

}
}
