**Rania Berliana** 
**2306165875**
**PBP B**

# Tugas 7 PBP
# 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget yang bersifat statis, tidak memiliki atau merubah keadaan internal (state), dan hanya dirender sekali. Contoh dari stateless widget adalah Text, Icon, dan Container.
Sedangkan stateful widget bersifat dinamis karena memiliki state yang dapat diperbarui, sehingga dapat dirender berulang kali. Hal ini memungkinkan widget untuk memperbarui tampilan berdasarkan perubahan data. Contoh penggunaannya adalah Checkbox, TextField, dan ListView.

# 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
a. Scaffold: memberi struktur dasar untuk halaman aplikasi, termasuk app bar, body, dan snackbar
b. AppBar: menyediakan area di bagian atas halaman untuk judul atau ikon
c. Center: memposisikan widget di tengah konten
d. Column: menyusun widget secara vertikal
e. ElevatedButton.icon: menampilkan tombol yang interaktif serta memiliki ikon dan label teks
f. Icon: menampilkan ikon dalam tombol
g. SnackBar: menampilkan notifikasi pesan di bagian bawah layar 

# 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() berfungsi untuk memperbarui state pada stateful widget dan meminta Flutter merender ulang UI agar sesuai dengan perubahan yang terjadi. Fungsi ini hanya berdampak pada variabel dalam kelas State dan membutuhkan perubahan visual (contohnya seperti nilai dalam counter, status loading, atau data pada daftar).

# 4. Jelaskan perbedaan antara const dengan final.
a. const: digunakan untuk nilai yang bersifat konstan saat compile-time dan tidak akan berubah, sehingga garus dideklarasikan saat kode ditulis. Contoh: const pi = 3.14.
b. final: digunakan untuk variabel yang bersifat tetap (final) setelah diinisialisasi tetapi tidak harus diketahui saat compile time, sehingga nilainya hanya diatur sekali selama runtime. Contoh: final dateNow = DateTime.now().

# 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
a. Membuat repository baru di github bernama e-commerce-mobile
b. Memulai flutter project bernama e_commerce di lokal, kemudian menghubungkan folder lokal dengan repository github
c. Merapikan struktur proyek dengan memindahkan sebagian kode dari file main.dart ke menu.dart, untuk menerapkan best practice "clean architecture"
d. Mengubah class MyHomePage extends StatefulWidget menjadi class MyHomePage extends StatelessWidget agar sifat widget di halaman menu menjadi stateless
e. Menggunakan ElevatedButton.icon untuk setiap tombol, dengan ikon yang sesuai dan label teks untuk membuat tiga tombol sederhana dengan ikon dan teks
f. Mengatur warna tombol yang berbeda untuk tiap tombol dengan menggunakan backgroundColor di style setiap tombol (ElevatedButton.styleFrom).
g. Memunculkan Snackbar dengan menggunakan ScaffoldMessenger.of(context).showSnackBar() untuk setiap tombol yang ditekan, menampilkan pesan yang sesuai berdasarkan tombol yang ditekan.
h. Save perubahan, kemudian melakukan git add, commit, dan push untuk menyimpan perubahan ke repository github.