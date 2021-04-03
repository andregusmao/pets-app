import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HeaderComponent extends StatelessWidget {
  final String title;
  final String subtitle;
  final ImageProvider avatar;
  final Function backButton;
  final Function onChangeAvatar;

  HeaderComponent(
      {Key key,
      this.title,
      this.subtitle = '',
      this.backButton,
      this.avatar,
      this.onChangeAvatar})
      : super(key: key);

  File image;

  Future _getImage() async {
    final pickedFile = await ImagePicker().getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      this.image = File(pickedFile.path);
      this.onChangeAvatar(pickedFile.path);
    }
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
              margin: const EdgeInsets.only(top: 32),
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
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                  child: Text(
                    this.subtitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
                  child: Text(
                    this.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
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
                    image: this.avatar == null
                        ? AssetImage('lib/assets/image-placeholder.png')
                        : this.avatar,
                    width: 96,
                    height: 96,
                    fit: BoxFit.cover,
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
