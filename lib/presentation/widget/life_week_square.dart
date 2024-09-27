import 'package:flutter/material.dart';

class LifeWeekSquare extends StatelessWidget {

  final int index;

  const LifeWeekSquare({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: _getSquareColor(),
        borderRadius: BorderRadius.circular(2),
      )
    );
  }

  Color _getSquareColor() {
    // Para simplificar, pintamos las semanas vividas de un color y el resto de otro.
    int currentWeek = 10 * 23; // Asume que la persona tiene 30 años
    if (index < currentWeek) {
      return Colors.blue; // Semanas vividas
    } else if (index == currentWeek) {
      return Colors.red; // Semana actual
    } else {
      return Colors.grey[300]!; // Semanas futuras
    }
  }
}