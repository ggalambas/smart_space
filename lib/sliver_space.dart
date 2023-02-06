part of 'smart_space.dart';

class SliverSpace extends StatelessWidget {
  final double multiplier;
  final Axis? axis;

  const SliverSpace._(this.multiplier, [this.axis]);

  /// Sliver-equivalent of [Space].
  factory SliverSpace([double multiplier = 1]) => SliverSpace._(multiplier);

  /// Sliver-equivalent of [Space.vertical].
  factory SliverSpace.vertical([double multiplier = 1]) =>
      SliverSpace._(multiplier, Axis.vertical);

  /// Sliver-equivalent of [Space.horizontal].
  factory SliverSpace.horizontal([double multiplier = 1]) =>
      SliverSpace._(multiplier, Axis.horizontal);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Space._(multiplier, axis),
    );
  }
}
