import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos/controllers/customer_controller.dart';
import 'package:pos/data/database/customer.dart';
import 'package:provider/provider.dart';
import '../../../variables/colors.dart';

class CustomerListItem extends StatelessWidget {
  final Customer customer;

  const CustomerListItem({Key? key, required this.customer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          context.read<CustomerController>().selectCustomer(customer, context),
      child: Container(
        margin: const EdgeInsets.only(top: 4),
        decoration: BoxDecoration(color: CustomColors.darkPurple),
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        height: 44,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 100,
              child: Text(
                customer.name!,
                textAlign: TextAlign.left,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              width: 100,
              child: Text(
                customer.phone!,
                textAlign: TextAlign.left,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              width: 100,
              child: Text(
                customer.posTotalAmount!.toString(),
                textAlign: TextAlign.left,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
