import 'dart:html';

import 'package:flutter/material.dart';

class Icerik2 extends StatefulWidget {
  const Icerik2({Key? key}) : super(key: key);

  @override
  State<Icerik2> createState() => _Icerik2State();
}

class _Icerik2State extends State<Icerik2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fotoğraflar"),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.chevron_left)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_a_photo_rounded))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.zero,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded1(),
                    Expanded1(),
                    Expanded1(),
                  ],
                ),
                Row(
                  children: [
                    Expanded2(),
                    Expanded2(),
                    Expanded2(),
                  ],
                ),
                Row(
                  children: [
                    Expanded1(),
                    Expanded1(),
                    Expanded1(),
                  ],
                ),
                Row(
                  children: [
                    Expanded2(),
                    Expanded2(),
                    Expanded2(),
                  ],
                ),
                Row(
                  children: [
                    Expanded1(),
                    Expanded1(),
                    Expanded1(),
                  ],
                ),
                Row(
                  children: [
                    Expanded2(),
                    Expanded2(),
                    Expanded2(),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class icerik2Padding {
  static const fotoPaddingOnlyTB = EdgeInsets.only(top: 5, bottom: 5);
}

class icerik2Sizedbox {
  static final double sizedBoxWidth = 50;
  static final double sizedBoxHeight = 150;
}

// First expanded
class Expanded1 extends StatefulWidget {
  const Expanded1({Key? key}) : super(key: key);

  @override
  State<Expanded1> createState() => _Expanded1State();
}

class _Expanded1State extends State<Expanded1> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: SizedBox(
            height: icerik2Sizedbox.sizedBoxHeight,
            width: icerik2Sizedbox.sizedBoxWidth,
            child: Image.network(
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg")),
      ),
    );
  }
}

// Second Expanded
class Expanded2 extends StatefulWidget {
  const Expanded2({Key? key}) : super(key: key);

  @override
  State<Expanded2> createState() => _Expanded2State();
}

class _Expanded2State extends State<Expanded2> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: SizedBox(
            height: icerik2Sizedbox.sizedBoxHeight,
            width: icerik2Sizedbox.sizedBoxWidth,
            child: Image.network(
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg")),
      ),
    );
  }
}
