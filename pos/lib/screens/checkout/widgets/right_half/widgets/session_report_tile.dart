import 'package:flutter/material.dart';

class SessionReportTile extends StatelessWidget {
  const SessionReportTile(
      {Key? key, required this.title, required this.content})
      : super(key: key);
  final String title;
  final String? content;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 28, right: 28, bottom: 5, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  content != null ? content! : '',
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )
            ],
          ),
        ),
        Divider(
          thickness: 0.5,
          color: Colors.grey.withOpacity(0.5),
        ),
      ],
    );
  }
}
