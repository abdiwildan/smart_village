import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/profile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}


class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
        ),
        color: Theme.of(context).colorScheme.primary,
        
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {}),
          Text("Profile Desa", style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.account_box_rounded))
        ]
      )
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child:  Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Desa Sukamakmur',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child:Text(
                    'Profil Desa XYZ mencakup lebih dari [jumlah penduduk] penduduk yang hidup dalam harmoni. Pemerintahan desa dipimpin oleh [nama kepala desa] dan [jumlah] anggota BPD, sementara fasilitas umum seperti [sebutkan fasilitas] menyediakan pelayanan penting bagi penduduk.\nDesa ini tetap berkomitmen untuk mempertahankan keaslian budaya dan tradisi, menciptakan lingkungan yang nyaman dan berkelanjutan. Dengan semangat gotong-royong, Desa XYZ terus berkembang menjadi komunitas yang ramah dan berdaya.',
                    style: TextStyle(
                    fontWeight: FontWeight.normal
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 6,                
                  ), 
                )
                
              ],
            ),
          ),
          const ProfileWidget(),
      
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lokasi',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),     

          Padding(
            padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'assets/maps.png',
                fit: BoxFit.cover,
                height: 400,
          ),
        ))

        ],
      ),
    );
  }
}