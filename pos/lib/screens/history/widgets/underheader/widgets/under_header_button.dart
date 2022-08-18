import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UnderHeaderButton extends StatelessWidget {
  const UnderHeaderButton({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  final onTap;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 7.h,
        child: Padding(
          padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 15),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
            ),
            onPressed: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.black,
                ),
                Expanded(
                  child: FittedBox(
                    child: Text(
                      text,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
