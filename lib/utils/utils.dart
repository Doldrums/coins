import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Utils {
  const Utils._();

  static void showBottomRoute(
          BuildContext context, Widget Function(BuildContext) route) =>
      showBarModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: route,
      );
}
