import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
    required this.amount,
    required this.icon,
    required this.onWaterAdded,
  });

  final double amount;
  final IconData icon;
  final Function onWaterAdded;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          onPressed: () => onWaterAdded(amount),
          elevation: 2,
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(
          '${amount.toInt()}ml',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
