import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

  static List<Article> articles = [
    Article(
      id: '1',
      title:
          'Desa Sukamakmur Raih Penghargaan Desa Terbaik Nasional',
      subtitle:
          'Desa Sukamakmur di Kabupaten Bogor berhasil meraih penghargaan sebagai Desa Terbaik Nasional dalam ajang Awards Nasional yang diselenggarakan oleh Kementerian Desa,',
      body:
          'Desa [Nama Desa] di Kabupaten [Nama Kabupaten] berhasil meraih penghargaan sebagai Desa Terbaik Nasional dalam ajang [Nama Ajang] yang diselenggarakan oleh Kementerian Desa, Pembangunan Daerah Tertinggal, dan Transmigrasi (Kemendes PDTT). Penghargaan tersebut diberikan kepada desa yang telah menunjukkan prestasi dan inovasi dalam pembangunan desa.'
          'Desa [Nama Desa] berhasil meraih penghargaan tersebut karena telah berhasil menerapkan berbagai program pembangunan yang berdampak positif bagi masyarakat desa. Salah satu program yang berhasil diterapkan oleh desa tersebut adalah program pemberdayaan masyarakat. Melalui program ini, masyarakat desa diberdayakan untuk mengembangkan potensi yang dimilikinya.'
          'Selain itu, desa tersebut juga berhasil mengembangkan potensi pariwisata desa. Desa [Nama Desa] memiliki berbagai potensi wisata alam, seperti air terjun, danau, dan hutan. Desa tersebut juga memiliki berbagai potensi wisata budaya, seperti kesenian dan adat istiadat.'
          'Penghargaan yang diraih oleh Desa [Nama Desa] merupakan bukti keberhasilan pemerintah desa dan masyarakat dalam membangun desa. Penghargaan tersebut juga menjadi motivasi bagi desa-desa lain untuk terus meningkatkan pembangunan desa.',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 1204,
      imageUrl:
          'https://sambirejosid.slemankab.go.id/assets/files/artikel/sedang_1630468839WhatsApp%20Image%202021-09-01%20at%2009.51.18.jpeg',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '2',
      title:
          'Dana Desa 1 Miliar Digelontorkan untuk Pembangunan Desa Sukamakmur',
      subtitle:
          'Pemerintah menggelontorkan dana desa sebesar 1 miliar untuk pembangunan Desa Sukamakmur di Kabupaten Bogor.',
      body:
          'Pemerintah menggelontorkan dana desa sebesar [Jumlah] miliar untuk pembangunan Desa [Nama Desa] di Kabupaten [Nama Kabupaten]. Dana tersebut akan digunakan untuk berbagai program pembangunan desa, seperti pembangunan infrastruktur, fasilitas umum, dan pemberdayaan masyarakat.'
          'Dana desa tersebut akan digunakan untuk membangun berbagai infrastruktur, seperti jalan desa, jembatan, dan irigasi. Dana tersebut juga akan digunakan untuk membangun fasilitas umum, seperti sekolah, puskesmas, dan pasar desa. Selain itu, dana tersebut juga akan digunakan untuk pemberdayaan masyarakat, seperti pelatihan keterampilan dan bantuan modal usaha.'
          'Pembangunan desa dengan menggunakan dana desa diharapkan dapat meningkatkan kesejahteraan masyarakat desa. Pembangunan desa juga diharapkan dapat meningkatkan perekonomian desa dan mengurangi kesenjangan antara desa dan kota.',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 1204,
      imageUrl:
          'https://dispmd.bulelengkab.go.id/public/uploads/konten/73_pemanfaatan-dana-desa-dan-kesejahteraan-masyarakat-indonesia.jpg',
     createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '3',
      title:
          'Pembangunan Jalan Desa Sukamakmur Rampung Dikerjakan',
      subtitle:
          'Pembangunan Jalan Desa [Nama Jalan] di Desa Sukamakmur di Kabupaten [Nama Kabupaten] telah rampung dikerjakan.',
      body:
          'Pembangunan Jalan Desa [Nama Jalan] di Desa [Nama Desa] di Kabupaten [Nama Kabupaten] telah rampung dikerjakan. Pembangunan jalan tersebut menggunakan dana desa sebesar [Jumlah] juta rupiah.'
          'Jalan Desa [Nama Jalan] memiliki panjang [Jumlah] meter dan lebar [Jumlah] meter. Jalan tersebut menghubungkan antara dusun [Nama Dusun] dan dusun [Nama Dusun]. Jalan tersebut juga merupakan akses utama bagi masyarakat untuk menuju ke sekolah, puskesmas, dan pasar desa.'
          'Pembangunan Jalan Desa [Nama Jalan] diharapkan dapat meningkatkan aksesibilitas masyarakat desa. Pembangunan jalan tersebut juga diharapkan dapat meningkatkan perekonomian desa.',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 1204,
      imageUrl:
          'https://imgx.gridoto.com/crop/0x0:0x0/700x465/photo/2023/03/06/seksi-1-jalan-tol-simpang-indral-20230306113132.jpeg',
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    ),
    Article(
      id: '4',
      title: 'Desa Sukamakmur Kembangkan Pariwisata Desa',
      subtitle:
          'Desa Sukamakmur di Kabupaten Bogor mengembangkan pariwisata desa untuk meningkatkan perekonomian desa.',
      body:
          'Desa [Nama Desa] di Kabupaten [Nama Kabupaten] mengembangkan pariwisata desa untuk meningkatkan perekonomian desa. Desa tersebut memiliki berbagai potensi wisata alam, seperti air terjun, danau, dan hutan. Desa tersebut juga memiliki berbagai potensi wisata budaya, seperti kesenian dan adat istiadat.'
          'Untuk mengembangkan pariwisata desa, desa tersebut telah melakukan berbagai upaya, seperti memperbaiki sarana dan prasarana wisata, melakukan promosi wisata, dan bekerja sama dengan pihak swasta.'
          'Upaya-upaya tersebut telah membuahkan hasil. Desa [Nama Desa] mulai dikunjungi oleh wisatawan dari berbagai daerah. Hal ini berdampak positif bagi perekonomian desa.',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 1204,
      imageUrl:
          'https://radarkepahiang.disway.id/upload/b6d036914ddbbd59d4cd3acc93b2707b.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 19)),
    ),
    Article(
      id: '5',
      title:
          'Warga Desa Sukamakmur Berhasil Budidaya Ikan Lele',
      subtitle:
          'Warga Desa Sukamakmur di Kabupaten Bogor berhasil mengembangkan budidaya ikan lele.',
      body:
          'Warga Desa [Nama Desa] di Kabupaten [Nama Kabupaten] berhasil mengembangkan budidaya ikan lele. Budidaya ikan lele tersebut dilakukan di kolam-kolam yang dibangun oleh pemerintah desa.'
          'Budidaya ikan lele tersebut telah memberikan manfaat bagi masyarakat desa. Budidaya tersebut telah memberikan lapangan pekerjaan bagi masyarakat desa. Selain itu, budidaya tersebut juga telah meningkatkan pendapatan masyarakat desa.'
          'Budidaya ikan lele tersebut diharapkan dapat menjadi contoh bagi desa-desa lain untuk mengembangkan potensi pertanian dan perikanan desa.',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 1204,
      imageUrl:
          'https://asset-2.tstatic.net/belitung/foto/bank/images/ilustrasi-ikan-lele.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        createdAt,
      ];
}