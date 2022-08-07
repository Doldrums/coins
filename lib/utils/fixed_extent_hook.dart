import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Creates [FixedExtentScrollController] that will be disposed automatically.
///
/// See also:
/// - [FixedExtentScrollController]
FixedExtentScrollController useFixedExtentScrollController({
  List<Object?>? keys,
}) {
  return use(
    _FixedExtentScrollControllerHook(
      keys: keys,
    ),
  );
}

class _FixedExtentScrollControllerHook
    extends Hook<FixedExtentScrollController> {
  const _FixedExtentScrollControllerHook({
    List<Object?>? keys,
  }) : super(keys: keys);

  @override
  HookState<FixedExtentScrollController, Hook<FixedExtentScrollController>>
      createState() => _ScrollControllerHookState();
}

class _ScrollControllerHookState extends HookState<FixedExtentScrollController,
    _FixedExtentScrollControllerHook> {
  late final controller = FixedExtentScrollController();

  @override
  FixedExtentScrollController build(BuildContext context) => controller;

  @override
  void dispose() => controller.dispose();

  @override
  String get debugLabel => 'useScrollController';
}
