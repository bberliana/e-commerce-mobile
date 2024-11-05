import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bag Shopper"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Kamu telah menekan tombol Lihat Daftar Produk"),
                  ),
                );
              },
              icon: Icon(Icons.list),
              label: Text("Lihat Daftar Produk"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange, 
                foregroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 16), 
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Kamu telah menekan tombol Tambah Produk"),
                  ),
                );
              },
              icon: Icon(Icons.add),
              label: Text("Tambah Produk"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange[900], 
                foregroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Kamu telah menekan tombol Logout"),
                  ),
                );
              },
              icon: Icon(Icons.logout),
              label: Text("Logout"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[700], 
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
