import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MainHeaderComponent extends StatelessWidget {
  final String title;
  final String subtitle;
  final ByteBuffer avatar;
  final Function backButton;

  MainHeaderComponent(
      {Key key, this.title, this.subtitle = '', this.backButton, this.avatar})
      : super(key: key);

  File image;

  Future _getImage() async {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    this.image = File(pickedFile.path);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.fromLTRB(0, 56, 0, 0),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                iconSize: 40.0,
                alignment: Alignment.centerLeft,
                onPressed: this.backButton,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage('lib/assets/services4pet-logo-main.png'),
                alignment: Alignment.centerLeft,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  child: Text(
                    this.subtitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
                  child: Text(
                    this.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                child: ClipOval(
                  child: Image(
                    image: this.image == null
                        ? AssetImage('lib/assets/image-placeholder.png')
                        : Image.file(this.image),
                    // image: this.widget.avatar == null
                    //     ? AssetImage('lib/assets/image-placeholder.png')
                    //     : Image.memory(this.widget.avatar.asUint8List()),
                    width: 128,
                    height: 128,
                  ),
                ),
                onTap: this._getImage,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
