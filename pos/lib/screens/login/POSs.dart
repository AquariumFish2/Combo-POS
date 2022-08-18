import 'package:flutter/material.dart';
import 'package:pos/controllers/branch_controller.dart';
import 'package:pos/controllers/companyController.dart';
import 'package:pos/controllers/pos_page_data.dart';
import 'package:pos/data/database/company.dart';
import 'package:pos/data/database/pos.dart';
import 'package:pos/screens/loading_screen/loading_screen.dart';
import 'package:provider/provider.dart';

import '../../controllers/pos_controller.dart';
import '../../data/database/branch.dart';
import '../../variables/colors.dart';
import 'users_pin_code.dart';

class Poses extends StatelessWidget {
  const Poses({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = FocusNode();
    return Scaffold(
      backgroundColor: CustomColors.darkPurple,
      body: FutureBuilder(
          future: context.read<POSPageDataGetter>().getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const LoadingScreen();
            } else {
              return Container(
                padding: const EdgeInsets.only(
                    left: 0, top: 30, right: 68, bottom: 0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/check_out_background.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/logo.png",
                            height: 36,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            'Digital Technologies',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(child: Container()),
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                                color: CustomColors.darkPurple,
                                shape: BoxShape.rectangle,
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff8d0e3c)
                                        .withOpacity(0.2),
                                    blurRadius: 17.0, // soften the shadow
                                    spreadRadius: 1.0,
                                  ),
                                ],
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(36),
                                    topRight: Radius.circular(36))),
                            child: ListView(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 42, left: 48, right: 48),
                                  child: DropdownButton(
                                      isExpanded: true,
                                      items: context
                                          .watch<CompanyController>()
                                          .companies
                                          .map((e) => DropdownMenuItem(
                                                child: Text(
                                                  e.name as String,
                                                  // style: TextStyle(
                                                  //     color: Colors.black),
                                                ),
                                                value: e,
                                              ))
                                          .toList(),
                                      value: context
                                          .watch<CompanyController>()
                                          .selectedCompany,
                                      hint: const Text(
                                        'select company',
                                        style: TextStyle(
                                          color: Color(0xffA3A2AC),
                                        ),
                                      ),
                                      icon: Padding(
                                          padding: EdgeInsets.only(bottom: 12),
                                          child: Icon(
                                            Icons.keyboard_arrow_down,
                                            color: context
                                                        .watch<
                                                            CompanyController>()
                                                        .selectedCompany !=
                                                    null
                                                ? CustomColors.pink
                                                : const Color(0xffA3A2AC),
                                          )),
                                      elevation: 0,
                                      style: TextStyle(
                                        color: context
                                                    .watch<CompanyController>()
                                                    .selectedCompany !=
                                                null
                                            ? CustomColors.pink
                                            : Colors.black,
                                      ),
                                      underline: Container(
                                        height: 1,
                                        color: context
                                                    .watch<CompanyController>()
                                                    .selectedCompany !=
                                                null
                                            ? CustomColors.pink
                                            : const Color(0xffA3A2AC),
                                      ),
                                      onChanged: (Company? company) {
                                        context
                                            .read<CompanyController>()
                                            .setCompany(company!, context);
                                      }),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 42, left: 48, right: 48),
                                  child: DropdownButton(
                                      isExpanded: true,
                                      items: context
                                          .watch<BranchController>()
                                          .selectedBranches
                                          .map((e) => DropdownMenuItem(
                                                child: Text(
                                                  e.name as String,
                                                ),
                                                value: e,
                                              ))
                                          .toList(),
                                      value: context
                                          .read<BranchController>()
                                          .selectedBranch,
                                      hint: const Text(
                                        'select branch',
                                        style: TextStyle(
                                          color: Color(0xffA3A2AC),
                                        ),
                                      ),
                                      icon: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 12),
                                        child: Icon(
                                          Icons.keyboard_arrow_down,
                                          color: context
                                                      .watch<BranchController>()
                                                      .selectedBranch !=
                                                  null
                                              ? CustomColors.pink
                                              : const Color(0xffA3A2AC),
                                        ),
                                      ),
                                      elevation: 0,
                                      style: TextStyle(
                                        color: context
                                                    .watch<BranchController>()
                                                    .selectedBranch !=
                                                null
                                            ? CustomColors.pink
                                            : Colors.black,
                                      ),
                                      underline: Container(
                                        height: 1,
                                        color: context
                                                    .watch<BranchController>()
                                                    .selectedBranch !=
                                                null
                                            ? CustomColors.pink
                                            : const Color(0xffA3A2AC),
                                      ),
                                      onChanged: (Branch1? branch) {
                                        context
                                            .read<BranchController>()
                                            .setBranch(branch!, context);
                                      }),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 42, left: 48, right: 48),
                                  child: DropdownButton(
                                      isExpanded: true,
                                      items: context
                                          .watch<PosController>()
                                          .selectedPOSs
                                          .map((e) => DropdownMenuItem(
                                                child: Text(
                                                  e.name as String,
                                                ),
                                                value: e,
                                              ))
                                          .toList(),
                                      value: context
                                          .read<PosController>()
                                          .selectedPOS,
                                      hint: const Text(
                                        'select pos',
                                        style: TextStyle(
                                          color: Color(0xffA3A2AC),
                                        ),
                                      ),
                                      icon: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 12),
                                          child: Icon(
                                            Icons.keyboard_arrow_down,
                                            color: context
                                                        .watch<PosController>()
                                                        .selectedPOS !=
                                                    null
                                                ? CustomColors.pink
                                                : Color(0xffA3A2AC),
                                          )),
                                      elevation: 0,
                                      style: TextStyle(
                                        color: context
                                                    .watch<PosController>()
                                                    .selectedPOS !=
                                                null
                                            ? CustomColors.pink
                                            : Colors.black,
                                      ),
                                      underline: Container(
                                        height: 1,
                                        color: context
                                                    .watch<PosController>()
                                                    .selectedPOS !=
                                                null
                                            ? CustomColors.pink
                                            : const Color(0xffA3A2AC),
                                      ),
                                      onChanged: (POS? pos) {
                                        context
                                            .read<PosController>()
                                            .setPOS(pos!);
                                      }),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 90, right: 48, left: 48),
                                  child: SizedBox(
                                      height: 50,
                                      child: OutlinedButton(
                                        onPressed: () {
                                          Provider.of<POSPageDataGetter>(
                                                  context,
                                                  listen: false)
                                              .checkSelection(context);
                                        },
                                        child: Text(
                                          'LOG IN',
                                          style: TextStyle(
                                              color: CustomColors.pink,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        style: OutlinedButton.styleFrom(
                                          side: BorderSide(
                                              color: CustomColors.pink),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          )),
                          Expanded(child: Container())
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
          }),
    );
  }
}
