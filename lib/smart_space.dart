/// smart_space package
library smart_space;

import 'package:flutter/widgets.dart';

part 'sliver_space.dart';

/// The measurement used for spacing increments.
/// {@template measurements}
/// Space follows the [Material measurements](https://material.io/design/layout/understanding-layout.html#material-measurements).
/// {@endtemplate}
var kSpace = 8.0;

class Space extends StatelessWidget {
  final double multiplier;
  final Axis? axis;

  const Space._(this.multiplier, [this.axis]);

  /// Looks to the parent widget and decides between
  /// the height or width to apply the spacing.
  ///
  /// {@template spacing}
  /// ```dart
  /// spacing = kSpace * multiplier;
  /// ```
  /// {@endtemplate}
  ///
  /// {@macro measurements}
  factory Space([double multiplier = 1]) => Space._(multiplier);

  /// Returns a SizedBox with spacing applied to the height.
  /// {@macro spacing}
  factory Space.vertical([double multiplier = 1]) =>
      Space._(multiplier, Axis.vertical);

  /// Returns a SizedBox with spacing applied to the width.
  /// {@macro spacing}
  factory Space.horizontal([double multiplier = 1]) =>
      Space._(multiplier, Axis.horizontal);

  double get spacing => kSpace * multiplier;

  @override
  Widget build(BuildContext context) {
    switch (axis ?? _parentAxis(context)) {
      case Axis.vertical:
        return SizedBox(height: spacing);
      case Axis.horizontal:
        return SizedBox(width: spacing);
    }
  }

  Axis _parentAxis(BuildContext context) {
    Widget? parent;
    context.visitAncestorElements((element) {
      if (element.widget is! Flex && element.widget is! ScrollView) return true;
      parent = element.widget;
      return false;
    });
    if (parent is Flex) return (parent as Flex).direction;
    if (parent is ScrollView) return (parent as ScrollView).scrollDirection;
    throw Exception(
      '$this widget can only by used under Flex and ScrollView widgets',
    );
  }
}
