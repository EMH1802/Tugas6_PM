class tempat {
  String Gambar() => '';

  String Deskripsi() => '';

  String hasilgambar1() => '';

  String hasilgambar2() => '';

  String hasildeskripsi1() => '';

  String hasildeskripsi2() => '';
}

class Hotel extends tempat {
  @override
  String Gambar() => 'Hotel';

  @override
  String Deskripsi() => 'Hotel';

  @override
  String hasilgambar1() {
    return 'https://cdn.discordapp.com/attachments/725154802387910756/970142706774990858/4698037.jpg';
  }

  @override
  String hasildeskripsi1() {
    return 'Hotel Santika Premiere Jogja';
  }

  @override
  String hasilgambar2() {
    return 'https://cdn.discordapp.com/attachments/725154802387910756/970142707047624744/61062962.jpg';
  }

  @override
  String hasildeskripsi2() {
    return 'Yellow Star Ambarukmo Hotel';
  }
}

class Wisata extends tempat {
  @override
  String Gambar() => 'Wisata';

  @override
  String Deskripsi() => 'Wisata';

  @override
  String hasilgambar1() {
    return 'https://cdn.discordapp.com/attachments/725154802387910756/970137226312843274/indrayanti.jpg';
  }

  @override
  String hasildeskripsi1() {
    return 'Pantai Indrayanti';
  }

  @override
  String hasilgambar2() {
    return 'https://cdn.discordapp.com/attachments/725154802387910756/970137226702909440/siung.jpg';
  }

  @override
  String hasildeskripsi2() {
    return 'Pantai Siung';
  }
}

class Kuliner extends tempat {
  @override
  String Gambar() => 'Kuliner';

  @override
  String Deskripsi() => 'Kuliner';

  @override
  String hasilgambar1() {
    return 'https://cdn.discordapp.com/attachments/725154802387910756/970142706309402664/6134a327559f6.jpg';
  }

  @override
  String hasildeskripsi1() {
    return 'Angkringan Pak Jabrik';
  }

  @override
  String hasilgambar2() {
    return 'https://cdn.discordapp.com/attachments/725154802387910756/970142706548482128/5f9105960a102.jpg';
  }

  @override
  String hasildeskripsi2() {
    return 'Soto Sampah';
  }
}
