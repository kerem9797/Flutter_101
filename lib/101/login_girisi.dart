import 'package:flutter/material.dart';

class LoginGirisi extends StatefulWidget {
  const LoginGirisi({Key? key}) : super(key: key);

  @override
  State<LoginGirisi> createState() => _LoginGirisiState();
}

class _LoginGirisiState extends State<LoginGirisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Kullanıcı Girişi"),
          leading: Padding(
            padding: projemPaddings.paddingAll,
            child: CircularProgressIndicator(
              color: cardColor.progressColor,
            ),
          ),
        ),
        body: Column(
          children: [
            Card(
              margin: projemMargins.marginAll,
              shape: cardBorder.borderradius,
              color: cardColor.groundColor,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: projemPaddings.paddingAll,
                        child: Text(
                          "E-posta kullanıcı adı",
                          style: TextStyle(
                              fontSize: projemTextStyle.fontsize,
                              fontFamily: projemTextStyle.fontfamily),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: projemPaddings.paddingAll,
              child: Container(
                child: TextField(
                  maxLength: 30,
                  keyboardType: TextInputType.emailAddress,
                  autofillHints: [AutofillHints.email],
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    border: OutlineInputBorder(),
                    labelText: "E-Posta",
                  ),
                ),
              ),
            ),
            Card(
              margin: projemMargins.marginAll,
              shape: cardBorder.borderradius,
              color: cardColor.groundColor,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: projemPaddings.paddingAll,
                        child: Text(
                          "Şifre",
                          style: TextStyle(
                              fontSize: projemTextStyle.fontsize,
                              fontFamily: projemTextStyle.fontfamily2),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: projemPaddings.paddingAll,
              child: Container(
                child: TextField(
                  maxLength: 20,
                  keyboardType: TextInputType.visiblePassword,
                  autofillHints: [AutofillHints.password],
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(),
                    labelText: "Şifre",
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: projemPaddings.paddingSymmetric,
                  child: SizedBox(
                    width: cardSizedBox.sizedBoxButtonWidth,
                    height: cardSizedBox.sizedBoxButtonHeight,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Giriş Yap"),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}

class projemMargins {
  static const marginAll = EdgeInsets.all(20);
}

class cardSizedBox {
  final double sizedBoxHeight = 600;
  final double sizedBoxWidth = 400;
 static final double sizedBoxButtonHeight=40;
 static final double sizedBoxButtonWidth=120;
}

class projemPaddings {
  static const ltrb = EdgeInsets.fromLTRB(60, 80, 0, 0);
  static const paddingAll = EdgeInsets.all(20);
  static const paddingSymmetric= EdgeInsets.symmetric(horizontal: 190);
}

class projemTextStyle {
  static const fontfamily = AutofillHints.email;
  static const fontfamily2 = AutofillHints.password;
  static final double fontsize = 20;
}

class cardBorder {
  static final borderradius =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}

class cardColor {
  static final groundColor = Colors.white38;
  static final progressColor = Colors.black;
  static final buttonColor=Colors.grey;
}
