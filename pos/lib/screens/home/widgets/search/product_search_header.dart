import 'package:flutter/material.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/variables/buttons.dart';
import 'package:provider/provider.dart';

class ProductSearchHeader extends StatelessWidget {
  ProductSearchHeader({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26.0, right: 21),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ElevatedButton(
                onPressed: () => context
                    .read<HomeController>()
                    .searchProducts(searchController.text, context),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'search',
                    style: TextStyle(color: Colors.white60),
                  ),
                ),
                style: ButtonStyles.searchButtonStyle),
          ),
          Expanded(
            child: SizedBox(
              height: 40,
              child: TextField(
                style: const TextStyle(fontSize: 13, color: Colors.white),
                controller: searchController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xff251C25),
                    hintText: 'type the search word ...',
                    hintStyle:
                        const TextStyle(color: Colors.white60, fontSize: 13),
                    contentPadding: EdgeInsets.only(left: 12),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
