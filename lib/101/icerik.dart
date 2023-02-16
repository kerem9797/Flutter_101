import 'package:flutter/material.dart';

class Icerik extends StatefulWidget {
  const Icerik({Key? key}) : super(key: key);

  @override
  State<Icerik> createState() => _IcerikState();
}

class _IcerikState extends State<Icerik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kullanıcı Profili"),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.chevron_left)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: icerikSizedbox().sizedBoxWidth,
                height: icerikSizedbox().sizedBoxHeight,
                child: Padding(
                  padding:icerikPadding.icerikPaddingLTRB,
                  child: Image.network("https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"),
                ),
                ),
              Padding(
                padding: icerikPadding.sizedBoxPaddingTop,
                child: SizedBox(
                  width: icerikSizedbox().sizedBoxWidth2,
                  height: icerikSizedbox().sizedBoxHeight2,
                  child: Card(
                    color: Colors.white30,
                    child: ListTile(
                      title: Text("kerem19karakas19@hotmail.com"),
                      onTap: (){},
                      subtitle: Text("keremkarakas97"),
                      shape: RoundedRectangleBorder(),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: icerikPadding.listTilePaddingAll,
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text("Kullanıcı"),
                    onTap: (){},
                    subtitle: Text("Profil Bilgileri"),
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Galeri"),
                    onTap: (){},
                    subtitle: Text("Fotolar,Videolar"),
                    leading: Icon(Icons.add_a_photo),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Kaydedilenler"),
                    onTap: (){},
                    subtitle: Text("Arşivler"),
                    leading: Icon(Icons.app_registration),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Ayarlar"),
                    onTap: (){},
                    subtitle: Text("Kullanıcı Ayarı"),
                    leading: Icon(Icons.settings),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Hesaplar"),
                    onTap: (){},
                    subtitle: Text("Kullanıcı Hesabı"),
                    leading: Icon(Icons.account_box),
                    trailing: Icon(Icons.chevron_right),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: icerikPadding.navigationPaddingOnlyLR,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.home_filled)),
                    ),
                    Padding(
                      padding: icerikPadding.navigationPaddingOnlyLR,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                    ),
                    Padding(
                      padding: icerikPadding.navigationPaddingOnlyLR,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.disabled_by_default_sharp)),
                    ),
                    Padding(
                      padding: icerikPadding.navigationPaddingOnlyLR,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
                    ),
                    Padding(
                      padding: icerikPadding.navigationPaddingOnlyLR,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.person)),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class icerikMargin {
  static const icerikMarginLTRB = EdgeInsets.fromLTRB(130, 20, 130,430);
}

class icerikPadding{
  static const icerikPaddingLTRB= EdgeInsets.fromLTRB(40, 10,40, 10);
  static const listTilePaddingAll= EdgeInsets.all(8.0);
  static const sizedBoxPaddingTop= EdgeInsets.only(top: 35);
  static const navigationPaddingOnlyLR= EdgeInsets.only(left: 30,right: 30);
}

class icerikSizedbox{
  final double sizedBoxWidth=200;
  final double sizedBoxHeight=200;
  final double sizedBoxWidth2=280;
  final double sizedBoxHeight2=100;
}

class icerikImages {
  static final String profilFoto = "assets/profileFoto.jpg";
}

