import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'SMKN 4 Mobile Apps',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white, // Mengatur warna teks menjadi putih
            ),
          ),
          backgroundColor: Color.fromARGB(255, 32, 148, 244),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Content for Tab 1')),
            Center(child: Text('Content for Tab 2')),
            Center(child: Text('Content for Tab 3')),
            Center(child: Text('Content for Tab 4')),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(text: 'Home', icon: Icon(Icons.home)),
            Tab(text: 'Schedule', icon: Icon(Icons.schedule)),
            Tab(text: 'Information', icon: Icon(Icons.campaign)),
            Tab(text: 'Card', icon: Icon(Icons.person)),
          ],
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.transparent, // Menghilangkan garis bawah indikator
        ),
      ),
    );
  }
}
