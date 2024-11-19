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

# Tugas 8 PBP
# 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
const digunakan untuk membuat objek atau nilai yang bersifat tetap (immutable) pada waktu kompilasi, sehingga nilai tidak perlu dibuat ulang setiap kali widget dirender.

Keuntungan penggunaan const adalah menghemat memori, karena objek const hanya dibuat sekali di memori. const juga meningkatkan performa, karena hanya di perlu di render sekali. 
const juga membantu menjaga konsistensi aplikasi karena nilai const tidak dapat diubah secara tidak sengaja.

const baik untuk digunakan saat mendefinisikan nilai tetap yang tidak berubah selama aplikasi berjalan, seperti warna, ukuran font, atau teks yang bersifat statis.
namun, const kurang baik digunakan pada nilai atau objek yang mungkin perlu diubah atau di-update selama aplikasi berjalan, seperti nama, price, amount, dan input lainnya pada aplikasi bag shopper karena input tersebut sesuai dengan keinginan setiap pengguna masing-masing.

# 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Column menyusun widget secara vertikal (ke bawah), contoh penggunaannya pada aplikasi saya adalah di left drawer, dimana tombol halaman utama dan tambah produk tersusun secara vertikal.

Sedangkan row menyusun widget secara horizontal (ke samping), contoh penggunaannya pada aplikasi saya adalah di halaman utama, dimana tombol halaman utama, tambah produk, dan log out tersusun secara horizontal.
 
# 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Elemen input yang saya gunakan pada aplikasi saya adalah TextFormField untuk Name, Amount, Price, Color, dan Description. Kemudian ElevatedButton untuk tombol 'save' agar dapat menyimpan data yang dimasukkan. Terakhir, saya menggunakan AlertDialog untuk memberikan notifikasi kepada pengguna saat data produk berhasil tersimpan, dan tombol OK untuk menutup dialog dan mengosongkan form.

Elemn input flutter lain yang tidak saya gunakan pada tugas saya adalah Checkbox, Switch, Radio, DropdownButton, Slider, dan DatePicker.

# 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Iya, saya mengubah baris colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFE9D79)), di file main.dart agar sesuai dengan tema warna yang saya gunakan pada website saya, yaitu #fe9d79. Untuk penggunaannya di flutter, hex code tersebut perlu diubah untuk mengikuti Dart language format, dengan menambah 0XFF di depan sehingga menjadi 0xFFFE9D79. 

# 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Tombol untuk menuju ke halaman-halaman berbeda telah ditampilkan di halaman utama, dan ditampilkan juga di drawer, sehingga pengguna dapat langsung masuk ke halaman yang mereka inginkan melalui tombol-tombol tersebut.

Untuk navigasi ke halaman selain halaman utama akan menggunakan Navigator.push(), agar pengguna dapat menekan tombol Back untuk kembali ke halaman menu. Selain itu, Navigator.pop() akan digunakan agar pengguna dapat mengatur kode untuk tombol kembali ke halaman menu.

# Tugas 9 PBP
# 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Model dapat membantu untuk representasi data JSON dalam bentuk objek Dart, sehingga lebih mudah untuk dibaca dan digunakan di dalam aplikasi. Model juga dapat memastikan format dan tipe data yang diterima atau dikirim sesuai dengan spesifikasi yang ditentukan. Pengelolaan data pun menjadi lebih modular dan dapat digunakan kembali di berbagai bagian aplikasi.

Jika kita tidak membuat model, belum tentu terjadi error, namun akan menjadi lebih sulit untuk membaca dan menulis data, serta aplikasi yang rentan terhadap kesalahan tipe data karena tidak ada validasi yang terintegrasi.

# 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library http digunakan untuk: 
a. Mengirim request, contohnya seperti POST untuk mengirim data login atau registrasi, dan GET untuk mengambil data dari server.
b. Menerima response, contohnya mengambil data JSON atau pesan dari server untuk diproses lebih lanjut di aplikasi Flutter.
c. Handle error, contohnya memberikan feedback jika terjadi gagal koneksi atau respons tidak valid.

# 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest digunakan untuk mengatur sesi autentikasi berbasis cookie antara aplikasi Flutter dan server Django, sehingga user tidak perlu login ulang setiap kali aplikasi dibuka. CookieRequest juga membantu melacak status login pengguna.

CookieRequest perlu dibagikan ke semua komponen agar seluruh bagian dari aplikasi dapat mengakses status login pengguna dan menggunakan cookie yang sama untuk otorisasi, sehingga aplikasi menjadi lebih konsisten dan efisien.

# 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Input data di Flutter dimulai dengan user memasukkan input, yang kemudian dikumpulkan dan divalidasi sebelum dikirim ke server. Data yang telah divalidasi akan dikirim menggunakan http.post() atau CookieRequest.postJson() dalam format JSON. Server Django menerima data dan memprosesnya (misalnya, menyimpannya ke database). Kemudian response dalam format JSON akan dikirim kembali ke Flutter. Data JSON yang diterima di-decode menjadi objek Dart (dengan model). Objek Dart ditampilkan melalui widget, misalnya menggunakan ListView.builder().

# 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
a. Pengguna login dengan memasukkan username dan password.
b. Data dikirim melalui ke endpoint /auth/login/.
c. Django memverifikasi kredensial.
d. Jika valid, server mengembalikan response dengan session cookie.
e. CookieRequest menyimpan cookie untuk otorisasi selanjutnya.
f. Jika login berhasil, user akan diarahkan ke halaman utama.
g. User yang belum memiliki akun dapat mengisi formulir pendaftaran dengan mengisi username dan password.
h. Data registrasi akan dikirim melalui http.post() ke endpoint /auth/register/.
i. Django akan membuat akun baru di database.
j. Jika registrasi berhasil, user akan diarahkan ke halaman login.
k. Flutter mengirimkan request untuk logout ke endpoint /auth/logout/.
l. Django menghapus session cookie.
m. Aplikasi akan 'reset' dengan kembali ke status tidak login.

# 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
a. Membuat aplikasi baru di proyek Django bernama authentication untuk integrasi Django dengan Flutter
b. Mengatur installed apps, middleware, allowed hosts, dan beberapa variabel tambahan di file settings.py
c. Membuat metode login dan registration di file views.py
d. Membuat file urls.py di folder authentication
e. Mengatur routing url ke fungsi views login dan registration yang telah dibuat sebelumnya
f. Melakukan install package yang dibutuhkan untuk integrasi sistem
g. Mengubah file main.dart agar root widget menyediakan CookieRequest library ke semua child widgets, menggunakan Provider
h. Membut file login.dart dan register.dart di screens proyek Flutter untuk mengatur fitur dan tampilan login dan registrasi 
i. Membuat model kustom berdasarkan data JSON dari proyek Django, menggunakan situs web Quicktype
j. Menambahan model ke file baru bernama product_entry.dart di folder models
k. Menambahkan package http dengan menjalankan 'flutter pub add http' di terminal
l. Menambahkan akses Internet pada aplikasi Flutter dengan mengatur user permission di file AndroidManifest.xml
m. Membuat file baru bernama list_moodentry.dart untuk melakukan fetch data dari Django
n. Menambahkan halaman list_moodentry.dart ke left drawer
o. Menambahkan redirection untuk tombol lihat daftar produk menuju ke halaman produk 
p. Membuat fungsi create_product_flutter agar user dapat menambahkan produk baru dari aplikasi Flutter
q. Mengatur routing paths ke fungsi tersebut di urls.py  
r. Mengatur halaman productentry_form.dart agar terhubung dengan CookieRequest dan mengatur perintah saat memencet tombol 
s. Membuat fitur logout dengan menambahkan fungsi baru di views.py Django, kemudian mengatur path ke fungsi tersebut di file urls.py
t. Menambahkan else if baru di file product_card.dart agar user dapat logout
u. Membuat file baru bernama product_detail.dart untuk mengatur fitur dan tampilan dari halaman yang menampilkan detail dari masing-masing produk
v. Mengatur kode di list_productentry.dart agar user dapat memencet setiap product card untuk menampilkan detail dari produk tersebut
w. Melakukan git add, commit, dan push untuk menyimpan semua perubahan ke github