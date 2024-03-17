import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostCreatePage(),
    );
  }
}

class PostCreatePage extends StatefulWidget {
  @override
  _PostCreatePageState createState() => _PostCreatePageState();
}

class _PostCreatePageState extends State<PostCreatePage> {
  double _rating = 3; // Başlangıç değeri olarak 3 verildi
  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gönderi Oluştur'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'Başlık'),
            ),
            SizedBox(height: 10),
            RatingBar.builder(
              initialRating: _rating,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, index) {
                return index < _rating
                    ? Image.asset('assets/images/yildiz_dolu.png') // Dolu yıldız görseli
                    : Image.asset('assets/images/yildiz_bos.png');  // Boş yıldız görseli
              },
              onRatingUpdate: (rating) {
                setState(() {
                  _rating = rating;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(hintText: 'İnceleme'),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: getImage,
              child: Text('Resim Yükle'),
            ),
            _image == null ? Text('Seçili resim yok') : Image.file(_image!),
          ],
        ),
      ),
    );
  }
}




