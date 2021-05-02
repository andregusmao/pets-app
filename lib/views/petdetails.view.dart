import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pets_app/components/container.component.dart';
import 'package:pets_app/components/floatingbutton.component.dart';
import 'package:pets_app/components/header.component.dart';
import 'package:pets_app/config/colors.dart';

class PetDetailsView extends StatelessWidget {
  List<ImageProvider> _petphotos = [
    Image.network(
            'https://i1.wp.com/www.dci.com.br/wp-content/uploads/2020/09/racas-de-cachorro-vira-lata-srd-deitado-descansando.jpg?resize=1000%2C684&ssl=1')
        .image,
    Image.network(
            'https://www.petlove.com.br/dicas/wp-content/uploads/2017/07/curiosidades-sobre-vira-latas.jpg')
        .image,
    Image.network(
            'https://www.petvale.com.br/imagens/guia_de_racas_cachorros-vira-lata.jpg')
        .image,
    Image.network(
            'https://th.bing.com/th/id/R0c28039aeb7eb0bb02cf7a2987e68430?rik=yfQarxS%2b3qM1Sg&riu=http%3a%2f%2fmymodernmet.com%2fwp%2fwp-content%2fuploads%2f2017%2f09%2fdog-portraits-alexander-khokhlov-8.jpg&ehk=E647vnBgE0eDuWH4Dl9%2b2n4bKNm9Dtpep7VxuyPdObM%3d&risl=&pid=ImgRaw')
        .image,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MAIN_COLOR,
      body: Column(
        children: [
          Center(
            child: HeaderComponent(
              title: 'Caramelo',
              subtitle: 'SRD',
              avatar: Image.network(
                      'https://pleno.news/wp-content/uploads/2017/09/dog-2453179_960_720-768x512.jpg')
                  .image,
              backButton: () => Navigator.of(context).pop(),
            ),
          ),
          ContainerComponent(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Espécie',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'Canina',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nascimento',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '10/07/2019',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cores predominantes',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'Marrom e caramelo',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Proprietários',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'André Gusmão',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'Adriana Francione',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gênero',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'Macho',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Número do RGA',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '156234',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mais fotos',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 32,
                              height: 96.0,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: this._petphotos.length,
                                itemBuilder: (context, index) {
                                  final photo = this._petphotos[index];
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                      child: GestureDetector(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return BackdropFilter(
                                                filter: ImageFilter.blur(
                                                    sigmaX: 4, sigmaY: 4),
                                                child: AlertDialog(
                                                  contentPadding:
                                                      const EdgeInsets.all(0.0),
                                                  content: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(16.0),
                                                    ),
                                                    child: Image(
                                                      image: photo,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                        16.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Image(
                                          image: photo,
                                          width: 96.0,
                                          height: 96.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingButtonComponent(
            icon: Icons.headset_mic_rounded,
            onPressed: () {},
          ),
          SizedBox(
            width: 16.0,
          ),
          FloatingButtonComponent(
            icon: Icons.list_alt_rounded,
            onPressed: () {},
          ),
          SizedBox(
            width: 16.0,
          ),
          FloatingButtonComponent(
            icon: Icons.edit_rounded,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
