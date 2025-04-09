import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.img, required this.nome, required this.descricao, required this.valor});

  final String img;
  final String nome;
  final String descricao;
  final String valor;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row (
          children: [
            Image.asset(
                img, 
                width: 100,
                height: 100,
              ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nome,
                    style: TextStyle (
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Text(
                    descricao,
                    style: TextStyle (
                      fontSize: 16,
                      color: Colors.black87
                    )
                  ),
                  Text(
                    valor,
                    style: TextStyle (
                      fontSize: 14,
                      color: Colors.black54
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}