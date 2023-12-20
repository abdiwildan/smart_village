import 'package:equatable/equatable.dart';

class Service extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String imageUrl;

  const Service({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.imageUrl,
  });

  static List<Service> services = [
    const Service(
      id: '1',
      title:
          'E-KTP',
      subtitle:
          'Persyaratan pembuatan KTP di kantor desa adalah sebagai berikut:',
      body:
          'Persyaratan pembuatan KTP\n 1. fotokopi KK\n 2. surat pengantar dari RT/RW\n 3. fotokopi akta kelahiran\n 4. fotokopi KTP lama (jika ada)',
      imageUrl:
          'https://umsu.ac.id/artikel/wp-content/uploads/2023/12/cara-dan-syarat-membuat-identitas-kependudukan-digital.webp',
    ),
    const Service(
      id: '2',
      title:
          'Kartu Keluarga',
      subtitle:
          'Persyaratan pembuatan Kartu Keluarga di kantor desa',
      body:
          'Persyaratan pembuatan KK\n 1. Fotokopi KTP Kepala keluarga\n 2. Fotokopi Akta kelahiran anggota keluarga\n 4. surat keterangan pindah (jika ada)',      
      imageUrl:
          'https://rtpintar.com/blog/wp-content/uploads/2021/09/desain-kk-rt-pintar-blog.png',
    ),
    const Service(
      id: '3',
      title:
          'Surat Kelahiran',
      subtitle:
          'Persyaratan pembuatan surat kelahiran di kantor desa',
      body:
          'Persyaratan pembuatan Surat kelahiran\n 1. Fotokopi KK\n 2. FotoKopi akta nikah atau akta cerai(jika ada), \n 3. fotokopi surat keterangan lahir di rumah sakit atau bidan.\n 4.surat keterangan desa',
      imageUrl:
          'https://i0.wp.com/sebarra-parindu.desa.id/wp-content/uploads/2022/06/aktalahirbaru.jpg?w=400&ssl=1',
    ),
    const Service(
      id: '4',
      title: 'Surat Kematian',
      subtitle:
          'persyaratan pembuatan surat kematian',
      body:
          'Persyaratan pembuatan Surat kematian\n 1. Fotokopi KK\n 2. Fotokopi KTP Almarhum\n 3. surat keterangan kematian dari rumah sakit atau bidan',
      imageUrl:
          'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/01/04/3493606447.jpg',
    ),
    const Service(
      id: '5',
      title:
          'Pelatihan SoftSkills',
      subtitle:
          'Pelatihan soft skills adalah jenis pelatihan yang berfokus pada pengembangan keterampilan non-teknis yang diperlukan untuk sukses dalam kehidupan dan pekerjaan.',
      body:
          'Pelatihan soft skills adalah jenis pelatihan yang berfokus pada pengembangan keterampilan non-teknis yang diperlukan untuk sukses dalam kehidupan dan pekerjaan. Pelatihan ini dapat mencakup berbagai topik, termasuk:'
          '* Komunikasi\n'
          '* Kepemimpinan\n'
          '* Kerja Tim\n'
          '* Kepemimpinan\n'
          '* Pemecahan Masalah\n'
          '* Manajemen Data\n'
          '* Etika Kerja\n'
          '* Kecerdasan emosional\n'
          '* Kemampuan beradaptasi\n',
      imageUrl:
          'https://hubstler.com/wp-content/uploads/2022/11/Skill-Words-5-600x400.jpg',
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        imageUrl,
      ];
}