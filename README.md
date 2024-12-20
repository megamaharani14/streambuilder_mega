Praktikum 6: StreamBuilder
![Screnshoot streambuilder_mega ](image/image.png)
Langkah 3: numberStream yaitu kelas untuk menyediakan stream angka acak, ada juga getNumbers fungsi untuk menghasilkan angka acak setiap detik menggunakan stream.periodic.
Langkah 7
StreamBuilder yaitu widget yang mendengarkan stream dan menampilkan data. Fungsi initState di stream dimulai dengan memanggil getNumbers() dari kelas NumberStream untuk menghasilkan angka acak.

Praktikum 6: BLoC Pattern
![Screnshoot streambuilder_mega ](image/image2.png)
Ketika tombol layar diklik, akan mengirimkan perintah ke RandonNumberBloc melalui generateRandom.add(null), setelah itu RandomNumberBloc akan membuat angka acak dan mengirimkan hasilnya ke stream (randomNumber). StreamBuilder di UI mendengarkan stream dan akan memperbarui tampilannya.