import 'package:flutter/material.dart';
import 'package:pemograman_mobile/models/wilayah.dart';

import '../drawer_screen.dart';
import '../src/arrays.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedItem = listBangunDatar[0];
  tempat _Wilayah = tempat();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengenalan Wisata Yogyakarta'),
        centerTitle: true,
      ),
      drawer: const DrawerScreen(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: ListView(physics: const BouncingScrollPhysics(), children: [
              const Text('Daftar Kategori'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 200,
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: DropdownButtonFormField<String>(
                          value: _selectedItem,
                          decoration: const InputDecoration(
                            enabledBorder: InputBorder.none,
                          ),
                          items: listBangunDatar
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  ))
                              .toList(),
                          onChanged: (value) => setState(() {
                                _selectedItem = value ?? _selectedItem;
                                _Wilayah = _changeWilayah();
                              })),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gambar $_selectedItem',
                    style: const TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: size.width,
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text('Gambar : ${_Wilayah.Gambar()}'),
                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.network(_Wilayah.hasilgambar1())
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Deskripsi $_selectedItem',
                    style: const TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: size.width,
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text('Deskripsi : ${_Wilayah.Deskripsi()}'),
                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('${_Wilayah.hasildeskripsi1()} ',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Gambar $_selectedItem',
                    style: const TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: size.width,
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text('Gambar : ${_Wilayah.Gambar()}'),
                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.network(_Wilayah.hasilgambar2())
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Deskripsi $_selectedItem',
                    style: const TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: size.width,
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text('Deskripsi : ${_Wilayah.Deskripsi()}'),
                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('${_Wilayah.hasildeskripsi2()} ',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }

  tempat _changeWilayah() {
    if (_selectedItem == 'Hotel') {
      return Hotel();
    } else if (_selectedItem == 'Wisata') {
      return Wisata();
    } else if (_selectedItem == 'Kuliner') {
      return Kuliner();
    }
    return tempat();
  }
}
