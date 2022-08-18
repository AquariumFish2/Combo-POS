import 'package:flutter/material.dart';
import 'package:pos/screens/history/overlays/historysearch/widgets/history_search_button.dart';

class SearchButtonRow extends StatelessWidget {
  const SearchButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          HistorySearchButton(
            backGroundColor: Colors.white,
            textColor: Colors.black,
            title: 'Cancel',
          ),
          SizedBox(
            width: 30,
          ),
          HistorySearchButton(
              backGroundColor: Colors.pink,
              textColor: Colors.white,
              title: 'OK')
        ],
      ),
    );
  }
}
