import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text('تطابق الصوره'),
        backgroundColor: Colors.indigo[800],
      ),
      body: const ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 1;
  void changeImage() {
    leftImageNumber = Random().nextInt(9) + 1;
    rightImageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              leftImageNumber == rightImageNumber
                  ? 'مبروك لقد نجحت'
                  : 'حاول مره اخري',
              style: const TextStyle(
                fontSize: 32.0,
                color: Colors.white,
              )),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {});
           changeImage();
                  },
                  child: Image.asset('images/image-$leftImageNumber.png')),
            ),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {});
                      changeImage();
                    },
                    child: Image.asset('images/image-$rightImageNumber.png'))),
          ],
        )
      ],
    );
  }
}
