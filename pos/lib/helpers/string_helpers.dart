abstract class StringsHelper {
  static String getDoubleAsString(double value, bool dotAdded) {
    String s = '';
    if (!dotAdded) {
      RegExp regex = RegExp(r"([.]*0)(?!.*\d)");
      s = value.toString().replaceAll(regex, "");
    } else {
      s = value.toString();
    }
    return s;
  }
}
