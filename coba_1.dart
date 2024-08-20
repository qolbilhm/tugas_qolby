void main() {
  // 1. List dan Aritmatika
  List<int> nilaiList = [75, 85, 95, 65, 70];

  // Fungsi untuk menghitung rata-rata nilai dari list
  double hitungRataRata(List<int> list) {
    int total = 0;
    for (int nilai in list) {
      total += nilai; // Penjumlahan (aritmatika)
    }
    return total / list.length; // Pembagian (aritmatika)
  }

  double rataRata = hitungRataRata(nilaiList);
  print('Rata-rata nilai adalah: $rataRata');

  // 2. Percabangan untuk menentukan kelulusan
  String cekKelulusan(double nilai) {
    if (nilai >= 75) {
      return "Lulus";
    } else {
      return "Tidak Lulus";
    }
  }

  // 3. Perulangan untuk mengecek kelulusan setiap nilai
  for (int nilai in nilaiList) {
    String status = cekKelulusan(nilai.toDouble());
    print('Nilai $nilai: $status');
  }

  // 4. Function, Scope, dan Closure
  Function pembuatPenambahNilai(int bonus) {
    return (int nilai) => nilai + bonus; // Closure yang mengunci nilai bonus
  }

  var tambah5 = pembuatPenambahNilai(5);  // Fungsi untuk menambah 5 poin
  var tambah10 = pembuatPenambahNilai(10); // Fungsi untuk menambah 10 poin

  int nilaiSiswa = 70;
  print('Nilai setelah ditambah 5 poin: ${tambah5(nilaiSiswa)}');
  print('Nilai setelah ditambah 10 poin: ${tambah10(nilaiSiswa)}');
}
