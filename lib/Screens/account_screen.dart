import 'package:flutter/material.dart';
import 'package:smart_village/Screens/login_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/kades.png'),
              ),
            ),
            Card(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.white70,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Kepin Sanjaya',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Email : kepinsanjaya@mail.com',
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Jenis Kelamin : Laki Laki',
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Pekerjaan : Pegawai Negeri Sipil',
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Alamat : Desa Sukamakmur Rt 2/5',
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            MaterialButton(
              color: Theme.of(context).colorScheme.primary,
              onPressed: () {
                Navigator.pushReplacementNamed(context, LoginScreen.routeName);
              },
              child: Text("LOGOUT"),
            )
          ],
        ),
      ),
    );
  }
}
