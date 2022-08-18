import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import '../variables/colors.dart';

enum ToastType {
  loading,
  success,
  error,
  info,
}

class LayoutController extends ChangeNotifier {
  final BuildContext context;
  LayoutController({required this.context});

  startLoading({String loadingText = 'Loading...'}) {
    _showToast(ToastType.loading, loadingText, const Duration(days: 1));
  }

  stopLoading() {
    dismissAllToast();
  }

  showToast(
      {required String text, required ToastType type, Duration? duration}) {
    _showToast(
      type,
      text,
      duration ?? const Duration(seconds: 4),
    );
  }

  //Helpers
  Color _getToastBGColor(ToastType type) {
    switch (type) {
      case ToastType.loading:
        return Colors.white;
      case ToastType.error:
        return Colors.red;
      case ToastType.success:
        return Colors.green;
      case ToastType.info:
        return Colors.blue;
    }
  }

  Icon _getToastIcon(ToastType type) {
    switch (type) {
      case ToastType.error:
        return const Icon(
          Icons.warning_rounded,
          color: Colors.white,
        );
      case ToastType.info:
        return const Icon(
          Icons.info,
          color: Colors.white,
        );
      case ToastType.success:
        return const Icon(
          Icons.check_circle,
          color: Colors.white,
        );
      case ToastType.loading:
        return const Icon(
          Icons.warning_rounded,
          color: Colors.white,
        );
    }
  }

  _showToast(ToastType type, String text, Duration duration) {
    showToastWidget(
      Container(
        constraints: const BoxConstraints(maxWidth: 400),
        decoration: BoxDecoration(
            color: _getToastBGColor(type),
            borderRadius: const BorderRadius.all(Radius.circular(100))),
        margin: const EdgeInsets.only(bottom: 30, right: 30),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            type == ToastType.loading
                ? SizedBox(
                    child: CircularProgressIndicator(
                      color: CustomColors.pink,
                      strokeWidth: 2,
                    ),
                    height: 20,
                    width: 20,
                  )
                : _getToastIcon(type),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Text(
                text,
                style: TextStyle(
                  color:
                      type == ToastType.loading ? Colors.black : Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
      dismissOtherToast: true,
      animation: StyledToastAnimation.slideFromRight,
      animDuration: const Duration(milliseconds: 200),
      reverseAnimation: StyledToastAnimation.slideToRight,
      position: const StyledToastPosition(
        align: Alignment.bottomRight,
      ),
      duration: duration,
    );
  }
}
