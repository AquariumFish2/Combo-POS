import 'package:flutter/material.dart';
import 'data/status_tab.dart';
import '../../../../../variables/colors.dart';

class StatusTabs extends StatelessWidget {
  final List<StatusTab> tabs;
  final bool expanded;
  final bool dark;
  const StatusTabs({
    Key? key,
    this.expanded = false,
    this.dark = false,
    required this.tabs,
  }) : super(key: key);
  List<StatusTab> initTabs() {
    List<StatusTab> newTabs = List.from(tabs);
    newTabs.first = tabs.first.copyWith(selected: true);
    return newTabs;
  }

  @override
  Widget build(BuildContext context) {
    List<StatusTab> _tabs = initTabs();
    selectTab() {
      _tabs = _tabs.map((e) => e.copyWith(selected: false)).toList();
    }

    Color tabColor(bool selected) {
      if (selected) {
        if (dark) {
          return CustomColors.settingSelectedItemBG;
        } else {
          return Colors.white;
        }
      } else {
        return Colors.transparent;
      }
    }

    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color:
            dark ? CustomColors.settingSelectItemBG : CustomColors.tabsGreyBG,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          for (StatusTab tab in _tabs)
            if (expanded)
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10, vertical: expanded ? 10 : 7),
                  decoration: BoxDecoration(
                    color: tabColor(tab.selected),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      selectTab();
                    },
                    child: Center(
                      child: Text(
                        tab.text,
                        style: TextStyle(
                          fontSize: 14,
                          color: dark ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            else
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                decoration: BoxDecoration(
                  color: tab.selected ? Colors.white : Colors.transparent,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    selectTab();
                  },
                  child: Center(
                    child: Text(
                      tab.text,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
