import 'package:flutter/material.dart';
import 'package:pos/controllers/cash_control_controller.dart';
import 'package:provider/provider.dart';

class CashControlNotesTextField extends StatelessWidget {
  const CashControlNotesTextField({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 8),
      child: TextField(
        onChanged: (notes) =>
            context.read<CashControlController>().setNotes(notes),
        style: const TextStyle(
          fontSize: 14,
        ),
        maxLines: 4,
        decoration: InputDecoration(
          hintText: 'Notes',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
