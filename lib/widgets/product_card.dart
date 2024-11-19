import 'package:e_commerce/screens/list_productentry.dart';
import 'package:e_commerce/screens/login.dart';
import 'package:e_commerce/screens/productentry_form.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ItemHomepage {
    final String name;
    final IconData icon;

    ItemHomepage(this.name, this.icon);
}

class ItemCard extends StatelessWidget {
final ItemHomepage item;

const ItemCard(this.item, {super.key});

@override
  Widget build(BuildContext context) {
    // Menentukan warna berdasarkan nama item.
    Color backgroundColor;
    if (item.name == "Lihat Daftar Produk") {
      backgroundColor = Colors.deepOrange;
    } else if (item.name == "Tambah Produk") {
      backgroundColor = Colors.deepOrange[900] ?? Colors.deepOrange;
    } else if (item.name == "Logout") {
      backgroundColor = Colors.red[700]!;
    } else {
      backgroundColor = Theme.of(context).colorScheme.secondary;
    }

    final request = context.watch<CookieRequest>();
    return Material(
      color: backgroundColor, // Menggunakan warna yang ditentukan
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () async {
            // Memunculkan SnackBar ketika diklik
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                  content: Text("Kamu telah menekan tombol ${item.name}!")));

            // Navigate ke route yang sesuai (tergantung jenis tombol)
            if (item.name == "Tambah Produk") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductEntryFormPage()),
              );
            }
            else if (item.name == "Lihat Daftar Produk") {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => const ProductPage()
                  ),
              );
            }
            else if (item.name == "Logout") {
              final response = await request.logout(
                  "http://127.0.0.1:8000/auth/logout/");
              String message = response["message"];
              if (context.mounted) {
                  if (response['status']) {
                      String uname = response["username"];
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("$message Sampai jumpa, $uname."),
                      ));
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                  } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text(message),
                          ),
                      );
                  }
              }
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}