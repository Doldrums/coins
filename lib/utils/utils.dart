import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../config/constants.dart';

part 'fixed_extent_hook.dart';
part 'bloc_observer.dart';

class Utils {
  const Utils._();

  static void showBottomRoute(
    BuildContext context,
    Widget Function(BuildContext) route,
  ) =>
      showBarModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: route,
      );

  static String prettyNumber(num number) {
    var formatter = NumberFormat(Constants.prettyFormat());
    if (number > 1000) {
      return formatter.format(number);
    } else {
      return number.toStringAsFixed(2);
    }
  }
}
