# Fungsi untuk menghitung total biaya proyek
function calculate_cost() {
    # Input jumlah pengembang
    echo "Masukkan jumlah pengembang:"  # Menampilkan pesan meminta input jumlah pengembang.
    read developers  # Membaca input dari user dan menyimpannya ke variabel 'developers'.

    # Input gaji per bulan per pengembang
    echo "Masukkan gaji per pengembang per bulan (dalam Rupiah):"  # Meminta input jumlah gaji per pengembang per bulan.
    read salary_per_dev  # Membaca input dari user dan menyimpannya ke variabel 'salary_per_dev'.

    # Input lama proyek dalam bulan
    echo "Masukkan lama proyek (dalam bulan):"  # Meminta input lama proyek dalam bulan.
    read project_duration  # Membaca input dari user dan menyimpannya ke variabel 'project_duration'.

    # Input biaya server per bulan
    echo "Masukkan biaya server per bulan (dalam Rupiah):"  # Meminta input biaya server per bulan.
    read server_cost  # Membaca input dari user dan menyimpannya ke variabel 'server_cost'.

    # Input biaya lisensi software
    echo "Masukkan biaya lisensi software (dalam Rupiah):"  # Meminta input biaya lisensi software.
    read software_license  # Membaca input dari user dan menyimpannya ke variabel 'software_license'.

    # Input biaya operasional lainnya
    echo "Masukkan biaya operasional lainnya (dalam Rupiah):"  # Meminta input biaya operasional lainnya.
    read operational_cost  # Membaca input dari user dan menyimpannya ke variabel 'operational_cost'.

    # Input anggaran awal proyek
    echo "Masukkan anggaran awal proyek (dalam Rupiah):"  # Meminta input anggaran awal proyek.
    read project_budget  # Membaca input dari user dan menyimpannya ke variabel 'project_budget'.

    # Menghitung total biaya gaji pengembang
    total_salary=$((developers * salary_per_dev * project_duration))
    # Menghitung total biaya gaji dengan mengalikan jumlah pengembang, gaji per pengembang per bulan, dan lama proyek dalam bulan.
    # Hasilnya disimpan ke variabel 'total_salary'.

    # Menghitung total biaya server
    total_server_cost=$((server_cost * project_duration))
    # Menghitung total biaya server dengan mengalikan biaya server per bulan dengan lama proyek.
    # Hasilnya disimpan ke variabel 'total_server_cost'.

    # Menghitung total biaya proyek
    total_cost=$((total_salary + total_server_cost + software_license + operational_cost))
    # Menjumlahkan total gaji pengembang, total biaya server, biaya lisensi software, dan biaya operasional lainnya.
    # Hasilnya disimpan ke variabel 'total_cost' yang merepresentasikan total biaya proyek.

    # Menghitung sisa anggaran proyek
    remaining_budget=$((project_budget - total_cost))
    # Mengurangi total biaya proyek dari anggaran awal untuk mendapatkan sisa anggaran.
    # Hasilnya disimpan ke variabel 'remaining_budget'.

    # Menampilkan hasil perhitungan
    echo "------------------------"  # Menampilkan garis pemisah.
    echo "Total biaya gaji pengembang: Rp $total_salary"  # Menampilkan total biaya gaji pengembang.
    echo "Total biaya server: Rp $total_server_cost"  # Menampilkan total biaya server.
    echo "Total biaya lisensi software: Rp $software_license"  # Menampilkan biaya lisensi software.
    echo "Total biaya operasional: Rp $operational_cost"  # Menampilkan biaya operasional.
    echo "------------------------"  # Menampilkan garis pemisah.
    echo "Total biaya keseluruhan proyek: Rp $total_cost"  # Menampilkan total biaya keseluruhan proyek.
    echo "Sisa anggaran: Rp $remaining_budget"  # Menampilkan sisa anggaran proyek.

    # Mengecek apakah proyek melebihi anggaran
    # -lt adalah salah satu operator perbandingan dalam Bash yang digunakan untuk membandingkan dua bilangan integer. Dalam konteks tersebut, -lt berarti "less than" atau "kurang dari".
    if [ $remaining_budget -lt 0 ]; then
        # Perintah yang dijalankan jika kondisi bernilai true
        # Jika sisa anggaran kurang dari 0, berarti proyek melebihi anggaran.
        # remaining_budget#-, itu berarti bahwa jika nilai dari variabel remaining_budget adalah negatif (misalnya -5000), maka tanda minus (-) akan dihapus, sehingga yang tersisa hanya nilai absolutnya (misalnya 5000).
        echo "Proyek melebihi anggaran sebesar Rp ${remaining_budget#-}"
    else
        # Perintah yang dijalankan jika kondisi bernilai false (opsional)
        # Jika sisa anggaran lebih dari atau sama dengan 0, berarti proyek masih dalam anggaran.
        # Menampilkan pesan bahwa proyek sesuai anggaran.
        echo "Proyek dapat diselesaikan dengan anggaran."
    # Dalam bash fi adalah penutup dari if
    fi
}

# Memanggil fungsi untuk menghitung biaya proyek
calculate_cost  # Memanggil fungsi 'calculate_cost' untuk menjalankan seluruh logika perhitungan di atas.