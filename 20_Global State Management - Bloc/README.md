1. Declarative UI, Flutter memiliki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini
2. State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori.
3. Ephemeral State: - Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya, cth: - PageView  - BottomNavigationBar  - Switch Button
                    - Tidak perlu state management yang kompleks
                    - Hanya membutuhkan StatefulWidget dengan menggunakan fungsi setState()
4. App State: - Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, cth: - Login info  - Pengaturan preferensi pengguna  - Keranjang belanja, dimana informasi itu akan muncul di screen yang berbeda
5. Provider: Class yang perlu diperhatikan dalam penggunaan provider, yaitu:
                a. Dari Package Provider: - ChangeNotifierProvider  - MultiProvider  - Consumer
                b. Built In class dari Flutter SDK: - ChangeNotifier
6. ChangeNotifier: - Class yang menambah dan menghapus listeners  - Digunakan dengan cara meng-extends  - Memanggil notifyListeners(), fungsi yang memberitahu widget yang menggunakan state bahwa terjadi perubahan data sehingga UI nya harus dibangun ulang
7. ChangeNotifierProvider: - Widget yang membungkus sebuah class  - Mengimplementasikan ChangeNotifier dan menggunakan child untuk widget UI nya  - Menggunakan create, provider yang akan menyimpan model yang telah dibuat
8. MultiProvider: - Jika kita membutuhkan lebih dari satu provider
9. Consumer: - Widget yang mendengarkan perubahan kelas yang mengimplementasikan ChangeNotifier  - Membangun ulang widget yang dibungkus Consumer saja  - Penting untuk meletakkan Consumer pada lingkup sekecil mungkin  - Membutuhkan properti builder yang berisi context, model, dan child
10. BLoc: - BLoc (Business Logic Component)  - Memisahkan antara business logic dengan UI
            Cara Kerjanya: - Menerima event sebagai input  - Dianalisa dan Dikelola di dalam BLoC  - Menghasil state sebagai output
11. Stream: - Rangkaian porses secara asynchronous  - Actor utama di dalam BLoC