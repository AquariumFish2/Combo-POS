import 'package:flutter/material.dart';
import 'package:pos/variables/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ToolsRowItem extends StatelessWidget {
  ToolsRowItem(
      {Key? key, required this.text, this.last, required this.selected})
      : super(key: key);
  final String text;
  bool? last;
  bool selected;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          //TODO add select method
          child: Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: selected ? Color(0xFF636366) : null,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        if (last == null)
          Container(
            height: 20,
            width: 1,
            color: Colors.grey.withOpacity(0.3),
          ),
        if (last != null) const Padding(padding: EdgeInsets.all(5)),
      ],
    );
  }
}
