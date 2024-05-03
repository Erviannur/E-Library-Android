import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> books = [
    {
      'image': 'bumi.jpg',
      'judul': 'Bumi',
      'penulis': 'Tere Liye',
      'sinopsis': 'Bumi, merupakan rangkaian awal dari kisah sekelompok anak remaja berkemampuan istimewa. Menceritakan tentang Raib, Ali, dan Seli yang bertualang ke dunia paralel. Mereka yang istimewa, mampu pergi ke dunia pararel bumi, bertemu dengan klan lain dan berhadapan dengan Tamus yang memiliki ambisi membebaskan si Tanpa Mahkota dan kemudian, menguasai bumi. Perkenalkan, Raib, seorang gadis belia berusia lima belas tahun yang tidak biasa. Dia bisa menghilang. Jangan beritahu siapapun, Itu adalah rahasia terbesar yang tak pernah ia ceritakan pada siapapun, termasuk kedua orangtuanya. Kehidupannya tetap berjalan normal, meskipun untuk dirinya sendiri. Tidak jarang Raib menjahili orang tuanya dengan tiba-tiba menghilang, lalu muncul kembali secara tiba-tiba membuat kaget kedua orangtuanya. Tidak hanya menyuguhkan cerita fantasi, novel ini juga memberikan pesan moral tentang keluarga, dan persahabatan. Tere Liye sukses membangun kisah persahabatan antara Raib, Ali, dan Seli terasa nyata. Hubungan antara Raib dan keluarganya membuat pembaca penasaran sekaligus tersadar akan cara berkomunikasi dengan orang tua. Tere Liye memberikan banyak kejutan di tiap halaman yang direpresentasikan oleh Raib, membuat pembaca dapat menikmati cerita yang seolah tidak akan ada habisnya. Tere Liye berhasil meracik buku ini sebagai bahan baca para pecinta novel sastra maupun fantasi.'
    },
    {
      'image': 'sejarah.jpeg',
      'judul': 'Sejarah Dunia Yang Disembunyikan',
      'penulis': 'Jonathan Black',
      'sinopsis': 'Banyak orang mengatakan bahwa sejarah ditulis oleh para pemenang. Hal ini sama sekali tak mengejutkan alias wajar belaka. Tetapi, bagaimana jika sejarah—atau apa yang kita ketahui sebagai sejarah—ditulis oleh orang yang salah? Bagaimana jika semua yang telah kita ketahui hanyalah bagian dari cerita yang salah tersebut? Dalam buku kontroversial yang sangat tersohor ini, Jonathan Black mengupas secara tajam penelusurannya yang brilian tentang misteri sejarah dunia. Dari mitologi Yunani dan Mesir kuno sampai cerita rakyat Yahudi, dari kultus Kristiani sampai Freemason, dari Karel Agung sampai Don Quixote, dari George Washington sampai Hitler, dan dari pewahyuan Muhammad hingga legenda Seribu Satu Malam, Jonathan menunjukkan bahwa pengetahuan sejarah yang terlanjur mapan perlu dipikirkan kembali secara revolusioner. Dengan pengetahuan alternatif ihwal sejarah dunia selama lebih dari 3.000 tahun, dia mengungkap banyak rahasia besar yang selama ini disembunyikan.'
    },
    {
      'image': 'laut_bercerita.png',
      'judul': 'Laut Bercerita',
      'penulis': 'Leila S. Chudori',
      'sinopsis': 'Laut Bercerita, novel terbaru Leila S. Chudori, bertutur tentang kisah keluarga yang kehilangan, sekumpulan sahabat yang merasakan kekosongan di dada, sekelompok orang yang gemar menyiksa dan lancar berkhianat, sejumlah keluarga yang mencari kejelasan makam anaknya, dan tentang cinta yang tak akan luntur.'
    },
    {
      'image': 'sebuah_seni.png',
      'judul': 'Sebuah Seni Bersikap Bodo Amat',
      'penulis': 'Mark Manson',
      'sinopsis': 'Selama beberapa tahun belakangan, Mark Manson—melalui blognya yang sangat populer—telah membantu mengoreksi harapan-harapan delusional kita, baik mengenai diri kita sendiri maupun dunia. Ia kini menuangkan buah pikirnya yang keren itu di dalam buku hebat ini. “Dalam hidup ini, kita hanya punya kepedulian dalam jumlah yang terbatas. Makanya, Anda harus bijaksana dalam menentukan kepedulian Anda.” Manson menciptakan momen perbincangan yang serius dan mendalam, dibungkus dengan cerita-cerita yang menghibur dan “kekinian”, serta humor yang cadas. Buku ini merupakan tamparan di wajah yang menyegarkan untuk kita semua, supaya kita bisa mulai menjalani kehidupan yang lebih memuaskan, dan apa adanya.'
    },
    {
      'image': 'dilan1990.jpg',
      'judul': 'Dilan : Dia Adalah Dilanku Tahun 1990',
      'penulis': 'Pidi Baiq',
      'sinopsis': '“Milea, kamu cantik, tapi aku belum mencintaimu. Enggak tahu kalau sore.Tunggu aja.”(Dilan 1990) “Milea, jangan pernah bilang ke aku ada yang menyakitimu, nanti, besoknya, orang itu akan hilang.” (Dilan 1990) “Cinta sejati adalah kenyamanan, kepercayaan, dan dukungan. Kalau kamu tidak setuju, aku tidak peduli.” (Milea 1990)'
    },
  ];

  final List<Map<String, dynamic>> newBooks = [
    {
      'image': 'dilan1990.jpg',
      'judul': 'Dilan : Dia Adalah Dilanku Tahun 1990',
      'penulis': 'Pidi Baiq',
      'sinopsis': '“Milea, kamu cantik, tapi aku belum mencintaimu. Enggak tahu kalau sore.Tunggu aja.”(Dilan 1990) “Milea, jangan pernah bilang ke aku ada yang menyakitimu, nanti, besoknya, orang itu akan hilang.” (Dilan 1990) “Cinta sejati adalah kenyamanan, kepercayaan, dan dukungan. Kalau kamu tidak setuju, aku tidak peduli.” (Milea 1990)'
    },
    {
      'image': 'dilan1991.jpg',
      'judul': 'Dilan : Dia Adalah Dilanku Tahun 1991',
      'penulis': 'Pidi Baiq',
      'sinopsis': 'ika aku berkata bahwa aku mencintainya, maka itu adalah sebuah pernyataan yang sudah cukup lengkap.""-Milea. ""Senakal-nakalnya anak geng motor, Lia, mereka shalat pada waktu ujian praktek Agama.""-Dilan'
    },
    {
      'image': 'milea.jpg',
      'judul': 'Milea Suara Dari Dilan',
      'penulis': 'Pidi Baiq',
      'sinopsis': 'Tidak ada kisah yang lebih Indah dari kisah cinta di SMA.Sama halnya dengan kisah cinta Dilan dan Milea.Dari yang awalnya benci hingga saling mencintai. Dari yang awalnya manis hingga menjadi rumit.Menjelang reuni akbar,Dilan memutuskan untuk menceritakan kembali masa masa itu.'
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Ucapan selamat datang
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Selamat Datang, Rahma!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),

            // Kolom pencarian
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari buku...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Rekomendasi buku
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Rekomendasi Buku',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 265, // Sesuaikan dengan tinggi yang Anda inginkan
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Atur arah scroll ke horizontal
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        _navigateToBookDetail(books[index]);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                          width: 150,
                          child: Card(
                            margin: EdgeInsets.symmetric(vertical: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'images/${books[index]['image']}',
                                    height: 175,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        books[index]['judul'],
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        'Penulis: ${books[index]['penulis']}',
                                        style: TextStyle(fontSize: 14),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 16),

            // Buku yang baru ditambahkan
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Buku yang Baru Ditambahkan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 265, // Sesuaikan dengan tinggi yang Anda inginkan
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Atur arah scroll ke horizontal
                  itemCount: newBooks.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        _navigateToBookDetail(newBooks[index]); // Navigasi ke halaman detail buku
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                          width: 150, // Sesuaikan dengan lebar yang Anda inginkan
                          child: Card(
                            margin: EdgeInsets.symmetric(vertical: 8.0), // Memberikan margin vertikal
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Gambar buku
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0), // Biar gambar bundar
                                  child: Image.asset(
                                    'images/${newBooks[index]['image']}',
                                    height: 175, // Sesuaikan dengan tinggi gambar yang Anda inginkan
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Judul buku
                                      Text(
                                        newBooks[index]['judul'],
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      // Penulis
                                      Text(
                                        'Penulis: ${newBooks[index]['penulis']}',
                                        style: TextStyle(fontSize: 14),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.orange, // Mengatur warna ikon yang dipilih menjadi oranye
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _navigateToBookDetail(Map<String, dynamic> book) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BookDetailPage(book: book)),
    );
  }

  void _navigateToNewBookDetail(Map<String, dynamic> newBook) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BookDetailPage(book: newBook)),
    );
  }
}

class BookDetailPage extends StatelessWidget {
  final Map<String, dynamic> book;

  BookDetailPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Buku'),         
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Center( // Menggeser Padding ke dalam Center
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20), // Menambahkan jarak dari pinggir
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image.asset(
                  'images/${book['image']}', // Ubah path gambar sesuai kebutuhan
                  height: 300,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Text(
                  '${book['judul']}',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), // Menambahkan properti fontWeight
                  textAlign: TextAlign.center, // Mengatur teks judul menjadi rata tengah
                ),
                SizedBox(height: 10), // Menambahkan jarak
                Text(
                  '${book['penulis']}',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center, // Mengatur teks penulis menjadi rata tengah
                ),
                SizedBox(height: 20), // Menambahkan jarak
                Text(
                  '${book['sinopsis']}',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center, // Mengatur teks sinopsis menjadi rata tengah
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton.icon(
            onPressed: () {
              // Tambahkan logika untuk navigasi ke halaman membaca di sini
            },
            icon: Icon(Icons.book),
            label: Text(
              'Baca Sekarang',
              style: TextStyle(fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange, // Warna latar belakang tombol
              onPrimary: Colors.white, // Warna teks di atas tombol
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Mengatur sudut tombol
              ),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24), // Padding tombol
            ),
          ),
        ),
      ),
    );
  }
}