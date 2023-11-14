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


Tugas 8 
1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
Navigator.push()

-Navigator.push() digunakan untuk menavigasikan ke halaman baru di atas halaman saat ini.
-Halaman baru ditumpuk di atas halaman sebelumnya dalam stack navigasi.
-Pengguna dapat kembali ke halaman sebelumnya dengan menggunakan tombol back.
-Cocok digunakan saat Anda ingin mempertahankan halaman sebelumnya dan mungkin kembali ke sana, seperti navigasi dari daftar produk ke detail produk.

Navigator.pushReplacement()

-Navigator.pushReplacement() digunakan untuk menavigasikan ke halaman baru sambil mengganti halaman saat ini dalam stack navigasi.
-Halaman sebelumnya dihapus dari stack, sehingga pengguna tidak dapat kembali ke halaman itu.
-Cocok digunakan saat Anda tidak ingin pengguna kembali ke halaman sebelumnya, seperti navigasi dari halaman login ke halaman beranda setelah berhasil masuk.

2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

Column dan Row
Digunakan untuk membuat layout secara vertikal (Column) atau horizontal (Row).
Cocok untuk menata elemen-elemen secara linear, seperti daftar atau toolbar.

Stack
Memungkinkan widget untuk ditumpuk di atas satu sama lain.
Cocok untuk kasus overlay, seperti badge pada ikon atau posisi absolut.

GridView
Menampilkan widget dalam grid dua dimensi.
Cocok untuk menampilkan koleksi item seperti galeri gambar atau grid produk.

ListView
Menampilkan daftar item yang bisa discroll.
Cocok untuk daftar yang panjang dan dapat berubah ukurannya, seperti feed berita atau daftar email.

Container
Widget yang sangat customizable untuk dekorasi, padding, dan sizing.
Serbaguna dan dapat digunakan hampir di mana saja untuk menambahkan spasi, warna, atau efek visual lainnya.

Padding
Memberikan padding (ruang dalam) ke sekitar widget lain.
Cocok untuk memberikan jarak antar elemen dalam layout.

Expanded dan Flexible
Menentukan bagaimana child widget di dalam Row atau Column harus diukur dan ditempatkan.
Expanded memaksa child mengisi ruang yang tersedia, sedangkan Flexible memberikan fleksibilitas dalam pembagian ruang.

3. Sebutkan apa saja elemen input pada form yang kita pakai pada tugas kali ini dan jelaskan mengapa kita menggunakan elemen input tersebut!
Elemen Input pada Form
Pada tugas ini, elemen input yang digunakan adalah:

TextFormField
Digunakan untuk input teks, seperti nama produk, deskripsi, dll.
Memungkinkan validasi input dan pengaturan keyboard yang sesuai.
Alasan penggunaan: Untuk memungkinkan pengguna memasukkan teks seperti nama dan deskripsi produk.

ElevatedButton
Sebuah tombol yang digunakan untuk melakukan aksi seperti submit form.
Alasan penggunaan: Untuk memungkinkan pengguna menyimpan data produk.

4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
Penerapan Clean Architecture pada Aplikasi Flutter
Clean Architecture mengacu pada pemisahan kode menjadi lapisan yang berbeda dengan masing-masing lapisan memiliki tanggung jawab spesifik. Ini meningkatkan modularitas, fleksibilitas, dan testability.

Presentation Layer:
Widget dan screen yang membentuk UI.
Menggunakan ViewModel atau Controller untuk mengelola state.

Business Logic Layer (BLL):
Berisi logika bisnis, biasanya dalam bentuk UseCases atau Services.
Memisahkan logika bisnis dari UI.

Data Layer:
Pengelolaan data, termasuk panggilan API, operasi database, dan penyimpanan lokal.
Menggunakan Repository Pattern untuk abstraksi sumber data.

Domain Layer:
Mendefinisikan entitas dan aturan bisnis yang tidak bergantung pada implementasi spesifik.

Dalam konteks Flutter, ini seringkali diimplementasikan dengan menggunakan package seperti Provider, Bloc, atau Riverpod untuk manajemen state dan injeksi dependensi, serta memisahkan interface dan implementasi dalam kode untuk memudahkan testing dan maintenance.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

- Menambahkan Drawer Menu untuk Navigasi
Buka Proyek Flutter: Buka proyek Flutter yang sebelumnya telah kita kerjakan menggunakan IDE favoritmu (seperti Visual Studio Code atau Android Studio).

Buat Berkas left_drawer.dart: Di dalam direktori lib, buat folder baru bernama widgets. Di dalam folder widgets ini, buat file baru dengan nama left_drawer.dart.

Tambahkan Kode untuk Drawer: Di dalam file left_drawer.dart, tulis kode untuk membuat sebuah drawer. Kode ini harus mengandung Drawer widget yang di dalamnya ada ListView dengan DrawerHeader dan beberapa ListTile untuk navigasi.

Tambahkan Navigasi ke Halaman Lain: Impor halaman yang ingin kita tambahkan ke dalam navigasi drawer, seperti MyHomePage dan ShopFormPage. Lalu, tambahkan ListTile untuk setiap halaman tersebut dengan metode navigasi yang sesuai.

- Menambahkan Form dan Elemen Input
Buat Berkas shoplist_form.dart: Di dalam direktori lib, buat file baru dengan nama shoplist_form.dart.

Tambahkan Kode untuk Form: Tulis kode untuk membuat form, menggunakan widget Scaffold, AppBar, dan Form. Gunakan TextFormField untuk input field, dan ElevatedButton untuk tombol submit.

Tambahkan Validasi dan Penanganan Submit: Di dalam setiap TextFormField, tambahkan validator untuk validasi input dan onChanged untuk mengupdate state. Pada ElevatedButton, tambahkan onPressed untuk menangani submit form.

- Menambahkan Fitur Navigasi pada Tombol
Modifikasi Widget ShopItem di menu.dart: Di dalam file menu.dart, tambahkan navigasi pada tombol dengan menggunakan Navigator.push atau Navigator.pushReplacement.

- Refactoring File
Buat Folder screens: Di dalam direktori lib, buat folder baru dengan nama screens.

Pindahkan Berkas ke screens: Pindahkan semua berkas yang berkaitan dengan halaman (seperti shoplist_form.dart, menu.dart) ke dalam folder screens ini.

Perbarui Impor: Perbarui semua impor di dalam proyekmu untuk mengakomodasi perubahan struktur folder.

Buat shop_card.dart: Di dalam folder widgets, buat file baru shop_card.dart dan pindahkan kode terkait dengan ShopItem ke dalam file ini.

Perbarui Impor di menu.dart: Di dalam file menu.dart, perbarui impor untuk ShopItem dari shop_card.dart.