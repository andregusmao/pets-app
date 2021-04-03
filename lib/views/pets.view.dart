import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pets_app/components/container.component.dart';
import 'package:pets_app/components/floatingbutton.component.dart';
import 'package:pets_app/components/header.component.dart';
import 'package:pets_app/components/pettile.component.dart';
import 'package:pets_app/config/colors.dart';
import 'package:pets_app/views/petdetails.view.dart';

class MyPet {
  final String avatarUrl;
  final String name;
  final String breed;
  final String age;

  MyPet({this.avatarUrl, this.name, this.breed, this.age});
}

class PetsView extends StatelessWidget {
  List<MyPet> myPets = [
    MyPet(
      avatarUrl:
          'https://pleno.news/wp-content/uploads/2017/09/dog-2453179_960_720-768x512.jpg',
      name: 'Caramelo',
      breed: 'SRD',
      age: '2 anos',
    ),
    MyPet(
      avatarUrl:
          'https://th.bing.com/th/id/OIP.Ri0LfpcCyoVoRBS3TosOIwHaLH?pid=ImgDet&rs=1',
      name: 'Sorriso',
      breed: 'Pitbull',
      age: '1 anos',
    ),
    MyPet(
      avatarUrl:
          'https://th.bing.com/th/id/R894a940bb4ee4cf330f0b9a975c566eb?rik=llMzEjkxRoeOBA&riu=http%3a%2f%2fwww.doggyzoo.com%2fwp-content%2fuploads%2f2014%2f01%2f428px-Border_Collie_panting.jpg&ehk=vpX3hdmOWAoSzFwYeU%2fP52CzB7Q4BeL5n%2fdAklaq%2f4E%3d&risl=&pid=ImgRaw',
      name: 'Fuchico',
      breed: 'Border Collie',
      age: '10 meses',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    //this.myPets.addAll(myPets.toList());

    return Scaffold(
      backgroundColor: MAIN_COLOR,
      body: Column(
        children: [
          Center(
            child: HeaderComponent(
              title: 'Meus Pets',
              subtitle: 'André Gusmão',
              avatar: Image.network(
                      'https://avatars.githubusercontent.com/u/4572757?v=4')
                  .image,
              backButton: () => Navigator.of(context).pop(),
            ),
          ),
          ContainerComponent(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 96.0),
              shrinkWrap: true,
              itemCount: this.myPets.length,
              itemBuilder: (context, index) {
                final MyPet pet = this.myPets[index];
                return GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PetTileComponent(
                      photo: Image.network(pet.avatarUrl).image,
                      name: pet.name,
                      breed: pet.breed,
                      age: pet.age,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PetDetailsView(),
                        ));
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingButtonComponent(
        icon: Icons.add_rounded,
        onPressed: () {},
      ),
    );
  }
}
