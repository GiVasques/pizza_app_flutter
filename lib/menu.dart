import 'package:flutter/material.dart';
import 'package:pizza_app/menu_item.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text ("Pizza Menu"),
      ),
      body: Column (
        children: [
          MenuItem(img: "images/focaccia.jpg", nome: "Foccacia", descricao: "Texto2", valor: "Texto3"),
          MenuItem(img: "images/funghi.jpg", nome: "Funghi", descricao: "Texto2", valor: "Texto3"),
          MenuItem(img: "images/margherita.jpg", nome: "Margherita", descricao: "Texto2", valor: "Texto3"),
          MenuItem(img: "images/prosciutto.jpg", nome: "Prosciutto", descricao: "Texto2", valor: "Texto3"),
          MenuItem(img: "images/salamino.jpg", nome: "Salamino", descricao: "Texto2", valor: "Texto3"),
          MenuItem(img: "images/spinaci.jpg", nome: "Spinaci", descricao: "Texto2", valor: "Texto3")
        ],
      )
    );
  }
}


