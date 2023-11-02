1. MVVM (Model-View ViewModel), Memisahkan logic dengan tampilan (View) ke dalam ViewModel
2. Keuntungan 1: Reusability, jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan ViewModel yang sama
3. Keuntungan 2: Maintainability, mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic.
4. Keuntungan 3: Testability, pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian
5. Struktur Direktori: - Model memiliki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut  - Tiap screen diletakkan dalam sebuah direktori yang di dalamnya terdapat View dan ViewModel
6. Model: - Bentuk data yang ingin digunakan, dibuat dalam bentuk class  - Data-data yang dimuat, diletakkan pada property
7. ViewModel: - Menyimpan data-data dan logic yang diperlukan halaman ContactScreen  - Jika widget lain memerlukan logic yang sama, dapat menggunakan ViewModel ini juga
8. Mendaftarkan ViewModel: - Menggunakan MultiProvider agar dapat menggunakan banyak ViewModel  - MaterialApp sebagai child utama
9. View, menggunakan StatefulWidget