function perhitungan_pengeluaran() {
    # Input jumlah pengembang
    echo "Masukkan jumlah pengembang:" 
    read pengembang 

    # Input gaji per bulan per pengembang
    echo "Masukkan gaji per pengembang per bulan (dalam Rupiah):" 
    read gaji_pengembang 

    # Input lama proyek dalam bulan
    echo "Masukkan lama proyek (dalam bulan):"  
    read durasi_proyek  

    # Input biaya server per bulan
    echo "Masukkan biaya server per bulan (dalam Rupiah):" 
    read biaya_server 

    # Input biaya lisensi software
    echo "Masukkan biaya lisensi software (dalam Rupiah):"  
    read lisensi_software 

    # Input biaya operasional lainnya
    echo "Masukkan biaya operasional lainnya (dalam Rupiah):"  
    read biaya_operasional  

    # Input anggaran awal proyek
    echo "Masukkan anggaran awal proyek (dalam Rupiah):"  
    read anggaran_proyek  

    # Menghitung total biaya gaji pengembang
    total_gaji=$((pengembang * gaji_pengembang * durasi_proyek))

    # Menghitung total biaya server
    total_biaya_server=$((biaya_server * durasi_proyek))

    # Menghitung total biaya proyek
    total_semua_biaya=$((total_gaji + total_biaya_server + lisensi_software + biaya_operasional))

    # Menghitung sisa anggaran proyek
    sisa_anggaran=$((anggaran_proyek - total_semua_biaya))
   
    # Menampilkan hasil perhitungan
    echo "------------------------"  
    echo "Total biaya gaji pengembang: Rp $total_gaji"  # Menampilkan total biaya gaji pengembang.
    echo "Total biaya server: Rp $total_biaya_server"  # Menampilkan total biaya server.
    echo "Total biaya lisensi software: Rp $lisensi_software"  # Menampilkan biaya lisensi software.
    echo "Total biaya operasional: Rp $biaya_operasional"  # Menampilkan biaya operasional.
    echo "------------------------" 
    echo "Total biaya keseluruhan proyek: Rp $total_semua_biaya"  # Menampilkan total biaya keseluruhan proyek.
    echo "Sisa anggaran: Rp $sisa_anggaran"  # Menampilkan sisa anggaran proyek.

    # Mengecek apakah proyek melebihi anggaran
    if [ $sisa_anggaran -lt 0 ]; then
        # Jika sisa anggaran kurang dari 0, berarti proyek melebihi anggaran.
        echo "Proyek melebihi anggaran sebesar Rp ${sisa_anggaran#-}"
    else
        # Jika sisa anggaran lebih dari atau sama dengan 0, berarti proyek masih dalam anggaran.
        echo "Proyek dapat diselesaikan dengan anggaran."
    fi
}

# Memanggil fungsi untuk menghitung biaya proyek
perhitungan_pengeluaran