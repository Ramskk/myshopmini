# utsmobile

Widget Utama & Fungsinya


1. Scaffold

Tempat struktur dasar screen: background, appbar, body.
Dipakai hampir di semua screen.

2. SafeArea

Mencegah UI tertutup notch / status bar, membuat jarak otomatis di bagian atas.

3. Column

Menyusun widget secara vertikal (atas ke bawah).
Digunakan untuk layout header + grid produk.

4. Row

Menyusun widget secara horizontal (kiri ke kanan).
Contohnya: tombol back + title kategori.

5. Padding

Memberi jarak luar pada widget.
Membuat UI lebih rapi dan tidak nempel pinggir.

6. GestureDetector

Mendeteksi tap, digunakan untuk:

Tombol back (custom)

Tap item produk → buka detail

Tap kategori

7. Container

Digunakan untuk styling:

Background warna putih

Border radius sudut

Shadow

Padding internal

Card image

8. BoxDecoration

Untuk dekorasi Container:

borderRadius

boxShadow

color

9. GridView.builder

Menampilkan daftar produk berbentuk grid 2 kolom.
Memakai builder agar lebih efisien dan cepat.

10. SliverGridDelegateWithFixedCrossAxisCount

Mengatur jumlah kolom grid, jarak antar item, dan aspect ratio kartu produk.

11. TweenAnimationBuilder

Animasi masuk (fade + slide) untuk:

Kartu produk di grid

Halaman detail (konten naik perlahan)
Membuat UI terasa smooth dan premium.

12. Hero

Animasi transisi gambar dari grid → detail product.
Memberikan efek modern dan profesional.

13. AspectRatio

Menjaga rasio gambar tetap konsisten di kartu produk.

14. Image.asset

Menampilkan gambar produk dari folder assets/images.

15. Text

Menampilkan:

Title kategori

Nama produk

Harga produk

16. Expanded

Mengisi ruang kosong yang tersedia secara fleksibel.
Dipakai agar grid mengambil tinggi penuh di bawah header.

17. SingleChildScrollView

Agar konten halaman detail bisa di-scroll ketika isi lebih panjang dari layar.

18. BouncingScrollPhysics

Memberikan efek bounce seperti iOS saat scroll mentok.

19. Navigator + PageRouteBuilder

Custom navigation:

Fade

SlideTransition

CurvedAnimation

Untuk transisi halaman yang lebih halus dan elegan.

20. SlideTransition + FadeTransition

Efek animasi ketika membuka halaman detail.
