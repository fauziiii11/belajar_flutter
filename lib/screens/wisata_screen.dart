import 'package:belajar_flutter/screens/detail_ws_screen.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class ListWisataScreen extends StatelessWidget {
  final List<Map<String, dynamic>> faunaData = [
    {
      "nama": "Harimau",
      "kota": "Sumatra",
      "image": "assets/img/harimau.jpg",
      "desc": "Harimau (Panthera tigris) adalah spesies kucing terbesar yang masih hidup dari genus Panthera. Harimau memiliki ciri loreng yang khas pada bulunya, berupa garis-garis vertikal gelap pada bulu oranye, dengan bulu bagian bawah berwarna putih. Harimau adalah pemangsa puncak, mereka terutama memangsa ungulata seperti rusa dan babi celeng. Harimau adalah hewan teritorial dan umumnya merupakan pemangsa soliter yang penyendiri, tetapi tetap memiliki sisi sosial. Mereka tetap tinggal di area-area yang berdekatan, untuk mendukung kebutuhan makanan dan membesarkan keturunannya. Anak harimau tinggal bersama ibu mereka selama sekitar dua tahun, kemudian akan hidup mandiri dan meninggalkan daerah jelajah ibu mereka untuk membangun rumah mereka sendiri.",
    },
    {
      "nama": "Orangutan",
      "kota": "Indonesia",
      "image": "assets/img/orangutan.jpg",
      "desc": "Orang utan (bentuk tidak baku: orangutan) atau mawas adalah kera besar yang berasal dari hutan hujan Indonesia dan Malaysia. Sekarang hewan ini hanya ditemukan di sebagian Kalimantan dan Sumatra, tetapi selama era Pleistosen, mereka tersebar di seluruh Asia Tenggara dan Tiongkok Selatan. Orang utan diklasifikasikan dalam genus Pongo dan awalnya dianggap hanya terdiri dari satu spesies. Sejak tahun 1996, orang utan dibagi menjadi dua spesies: orang utan kalimantan (P. pygmaeus, dengan tiga subspesies) dan orang utan sumatra (P. abelii). Spesies ketiga, orang utan tapanuli (P. tapanuliensis), diidentifikasi secara definitif pada tahun 2017. Orang utan adalah satu-satunya genus yang masih hidup dari subfamili Ponginae, yang secara genetik terpisah dari Hominidae lain (gorila, simpanse, dan manusia) antara 19,3 dan 15,7 juta tahun lalu.",
    },
    {
      "nama": "Komodo",
      "kota": "Nusa Tenggara Timur",
      "image": "assets/img/komodo.jpg",
      "desc": "Komodo atau lengkapnya biawak komodo (Varanus komodoensis), adalah spesies biawak besar yang terdapat di Pulau Komodo, Rinca, Flores, Gili Motang, dan Gili Dasami di Provinsi Nusa Tenggara Timur, Indonesia.[1][2] Hewan ini oleh penduduk asli pulau Komodo juga disebut dengan nama setempat ora.[3] Nama lain dari komodo adalah buaya darat, walaupun komodo bukanlah spesies buaya.[4]",
    },
    {
      "nama": "Burung Cendrawasih",
      "kota": "Papua",
      "image": "assets/img/burung.webp",
      "desc": "Ancaman dan Konservasi: Beberapa spesies burung cendrawasih menghadapi ancaman serius terutama karena kerusakan habitat, perburuan ilegal, dan perdagangan burung. Upaya konservasi dilakukan untuk melindungi burung cendrawasih dan habitatnya. Beberapa jenis cendrawasih yang terkenal termasuk Cendrawasih Raggiana, Cendrawasih Ratu Victoria, dan Cendrawasih Raja. Burung-burung ini merupakan simbol keindahan dan keunikan alam, oleh karena itu menjaga kelestarian mereka dari kepunahan sangatlah penting. Untuk melindungi habitat alami dan burung-burung cendrawasih ini, kita membutuhkan partisipasi aktif dari masyarakat lokal, peneliti, serta pemerintah.",
    },
    {
      "nama": "Badak",
      "kota": "Sumatra",
      "image": "assets/img/badak.jpeg",
      "desc": "Badak merupakan salah satu mamalia besar di Indonesia yang terancam punah. Di Indonesia terdapat dua spesies badak yaitu badak sumatera (Dicerorhinus sumatrensis) dan badak jawa (Rhinoceros sondaicus).",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Fauna'),
        backgroundColor: Color.fromARGB(255, 1, 192, 1),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/hutan.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: faunaData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailFaunaScreen(
                        nama: faunaData[index]["nama"],
                        kota: faunaData[index]["kota"],
                        image: faunaData[index]["image"],
                        desc: faunaData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: displayHeight(context) * 0.35,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${faunaData[index]["image"]}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    "${faunaData[index]["nama"]} - ${faunaData[index]["kota"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}