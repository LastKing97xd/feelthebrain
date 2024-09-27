import 'package:feelthebrain/presentation/widget/life_week_square.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final int totalWeeks = 90 * 52;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Feel the Brain - Semanas de Vida'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 52, // 52 semanas por fila (un año completo)
            crossAxisSpacing: 2, // Espaciado entre columnas
            mainAxisSpacing: 2, // Espaciado entre filas
          ),
          itemCount: totalWeeks,
          itemBuilder: (context, index) {
            return LifeWeekSquare(index: index);
          },
        ),
      ),
    );
  }
}