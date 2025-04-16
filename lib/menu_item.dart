import 'package:flutter/material.dart';
import 'package:pizza_app/pizza_data.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.pizza});

  final Pizza pizza;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ColorFiltered(
              colorFilter:
              pizza.soldOut 
              ?  ColorFilter.mode(Colors.grey, BlendMode.saturation) 
              : ColorFilter.mode(Colors.transparent, BlendMode.saturation),
              child: Image.asset(
                "images/${pizza.photoName}",
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pizza.name,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                          ),
                  Text(
                    pizza.ingredients,
                      style: TextStyle(fontSize: 16, color: Colors.black87)
                      ),
                  Text(
                    pizza.soldOut ? "sold out" : "R\$${pizza.price}",
                      style: TextStyle(fontSize: 14, color: Colors.black54)
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
