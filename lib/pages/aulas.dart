import 'package:flutter/material.dart';

class PageModulo extends MaterialPageRoute<Null> {
  String title;
  PageModulo(this.title)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Center(
              child: Text("Conteúdo do curso de $title"),
            ),
          );
        });
}
