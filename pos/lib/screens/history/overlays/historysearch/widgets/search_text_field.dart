import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchTextFields extends StatelessWidget {
  const SearchTextFields({Key? key, required this.firstTitle, this.secondTitle})
      : super(key: key);
  final String firstTitle;
  final String? secondTitle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 29.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      firstTitle,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      // width: 18.w,
                      height: 41,
                      child: const TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            // Spacer(),
            if (secondTitle != null)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 29.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        secondTitle!,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        // width: 18.w,
                        height: 41,
                        child: const TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if (secondTitle == null) Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
