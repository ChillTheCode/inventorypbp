Tugas 7 PBP

1. Dalam pengembangan aplikasi Flutter, perbedaan utama antara Stateless Widget dan Stateful Widget terletak pada kemampuan mereka dalam mengelola dan merubah keadaan (state) tampilan.

Stateless Widget adalah widget yang tidak dapat berubah atau tetap konstan sepanjang siklus hidupnya. Ini cocok untuk tampilan statis yang tidak mengalami perubahan.

Sebaliknya, Stateful Widget adalah widget yang dapat mengelola dan merubah keadaan selama siklus hidup aplikasi. Mereka digunakan untuk tampilan yang memerlukan pembaruan, perubahan data, atau respons terhadap interaksi pengguna. Stateful Widget menggunakan objek state terpisah untuk menyimpan dan mengelola keadaan, sehingga mereka dapat memperbarui tampilan saat keadaan berubah.

2. Berikut adalah widget yang digunakan dalam tugas 7:

MyHomePage (StatelessWidget): Widget ini menggambarkan halaman utama aplikasi kita, serta menampilkan judul aplikasi di app bar dan daftar ShopItem dalam GridView.
Scaffold: Widget ini adalah struktur dasar untuk menyusun elemen-elemen tampilan seperti AppBar dan body aplikasi, serta menentukan app bar dan tampilan utama yang dapat discroll.
AppBar: Widget ini menampilkan judul aplikasi di atas halaman.
SingleChildScrollView: Widget ini adalah wrapper untuk tampilan utama yang dapat discroll jika kontennya lebih panjang dari layar.
Padding: Widget ini menambahkan padding ke dalam tampilan utama untuk memberikan jarak antara elemen-elemen tampilan.
Column: Widget ini mengatur elemen-elemen tampilan secara vertikal dalam satu kolom.
Text: Widget ini menampilkan teks yang diperlukan dengan gaya tertentu.
GridView.count: Widget ini menampilkan daftar ShopItem dalam grid layout dengan tiga kolom.
ShopItem (Model Class): Model class ini merepresentasikan item toko dengan nama dan ikonnya.
ShopCard (StatelessWidget): Widget ini mewakili kartu untuk setiap item toko di dalam grid. Menggunakan InkWell untuk membuat area yang responsif terhadap sentuhan. Ketika diklik, menampilkan SnackBar yang memberikan umpan balik ke pengguna tentang item yang dipilih.
Material: Widget ini menerapkan warna latar belakang pada kartu.

3. 

Instalasi Flutter
Berdasarkan sistem operasi yang kita gunakan, kita akan mengikuti instruksi yang diberikan:
Untuk pengguna Mac OS dengan Homebrew, kita akan menjalankan perintah brew install --cask flutter.
Untuk pengguna Windows dan Linux, kita akan mengikuti panduan yang diberikan pada tautan yang tersedia.


Instalasi IDE

Kita dapat memilih IDE untuk mengembangkan aplikasi Flutter. Pilihan yang diberikan adalah Android Studio (yang direkomendasikan) atau Visual Studio Code.
Jika kita memilih Visual Studio Code, kita akan perlu menginstal ekstensi Dart dan Flutter untuk dapat mengembangkan dengan Flutter di dalamnya.

Buka Terminal atau Command Prompt
Setelah menginstal Flutter, buka Terminal atau Command Prompt untuk menjalankan perintah-perintah selanjutnya.

Buat dan Jalankan Proyek Flutter
Dalam terminal, masuk ke direktori tempat kita ingin menyimpan proyek Flutter-mu.
Kemudian, jalankan perintah flutter create <APP_NAME> untuk membuat proyek baru dengan nama yang kita tentukan.
Masuk ke dalam direktori proyek dengan perintah cd <APP_NAME>.
Terakhir, jalankan proyek dengan perintah flutter run.

Menjalankan Proyek di macOS(Khusus pengguna macOS)
Jika kita menggunakan macOS, ada beberapa opsi untuk menjalankan aplikasi Flutter, tetapi yang termudah adalah menggunakan emulator di Android Studio atau menggunakan Google Chrome.

Enable Web Support (Opsional)
Jika kita ingin mendukung pengembangan untuk web, jalankan perintah flutter config --enable-web di direktori proyek.

Menjalankan Proyek di Chrome (Untuk Web)
Jika kita ingin menjalankan proyek Flutter di Google Chrome, jalankan perintah flutter run -d chrome di direktori proyek. edge -> flutter run -d edge dsb.

Inisialisasi Git dan Push ke GitHub
Di root folder proyek Flutter-mu, jalankan perintah git init untuk menginisialisasi repositori Git.
Tambahkan, commit, dan push proyek ke repositori GitHub dengan nama inventorypbp.

Merapikan Struktur Proyek
Dalam langkah ini, kita membuat file baru bernama menu.dart di direktori inventorypbp/lib (sesuai dengan direktori kita) dan memindahkan beberapa kode dari main.dart ke menu.dart.
Kemudian, kita menambahkan import yang diperlukan di awal file main.dart.

Membuat Widget Sederhana pada Flutter
Tutorial ini menjelaskan bagaimana membuat widget sederhana di Flutter. kita mengubah tema warna aplikasi menjadi indigo dan mengubah sifat widget halaman menu dari stateful menjadi stateless.
Selain itu, kita menambahkan teks dan card untuk menampilkan barang yang dijual. kita juga membuat kelas ShopItem untuk mendefinisikan barang-barang yang dijual dan kelas ShopCard untuk menampilkan card barang.

Ubah Warna Widget Tomblol Lihat Produk, Tambah Produk, dan Logout
menambahkan properti color pada objek ShopItem dan menggunakannya dalam widget ShopCard.

Pertama, kita perlu menambahkan properti color pada objek ShopItem dengan tipe data Color di kelas ShopItem.
Kemudian, dalam kelas MyHomePage, kita perlu menginisialisasi setiap objek ShopItem dengan nama, ikon, dan warna yang sesuai.
Terakhir, dalam kelas ShopCard, gunakan properti color dari objek item untuk menentukan warna latar belakang dari widget Material, sehingga setiap tombol akan memiliki warna yang berbeda sesuai dengan properti color dari ShopItem.

Setelah menjalankan langkah-langkah di atas, kita akan memiliki proyek Flutter dengan struktur yang rapi, serta sebuah halaman menu yang menampilkan daftar barang yang dijual. Saat tombol pada card ditekan, akan muncul pemberitahuan di bagian bawah layar.
