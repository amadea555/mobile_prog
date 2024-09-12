function gaya() {
    echo "masukan massa: "
    read massa
    echo "masukan percepatan: "
    read percepatan

    gaya=$((massa * percepatan))
    
    echo "gaya nya adalah (F): $gaya N"
}

gaya