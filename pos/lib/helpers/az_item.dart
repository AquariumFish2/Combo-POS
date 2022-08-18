import 'package:azlistview/azlistview.dart';

class AZItem extends ISuspensionBean {
  final String title;

  final String tag;

  AZItem({required this.title, required this.tag});

  @override
  String getSuspensionTag() {
    return tag;
  }
}
