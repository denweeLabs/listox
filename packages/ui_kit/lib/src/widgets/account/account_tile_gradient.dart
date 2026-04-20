import 'package:flutter/material.dart';

/// Predefined icon background gradients for [AccountHorizontalTileV2].
///
/// Each gradient transitions from a vibrant [from] colour to a deeper but
/// still vivid [to] shade, rendered top-left → bottom-right for an
/// iOS-style icon bubble.
class TileIconGradient {
  final Color from;
  final Color to;

  const TileIconGradient({
    required this.from,
    required this.to,
  });

  LinearGradient get gradient => LinearGradient(
    colors: [from, to],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // ── Reds ─────────────────────────────────────────────────────────────────
  static const red = TileIconGradient(
    from: Color(0xFFFF8585),
    to: Color(0xFFF04868),
  );
  static const coral = TileIconGradient(
    from: Color(0xFFFF9070),
    to: Color(0xFFF06040),
  );

  // ── Oranges ──────────────────────────────────────────────────────────────
  static const orange = TileIconGradient(
    from: Color(0xFFFFB058),
    to: Color(0xFFF07828),
  );
  static const peach = TileIconGradient(
    from: Color(0xFFFFC07A),
    to: Color(0xFFF09048),
  );
  static const amber = TileIconGradient(
    from: Color(0xFFFFD858),
    to: Color(0xFFF8B820),
  );
  static const gold = TileIconGradient(
    from: Color(0xFFFFE050),
    to: Color(0xFFF0B818),
  );

  // ── Greens ───────────────────────────────────────────────────────────────
  static const lime = TileIconGradient(
    from: Color(0xFFA4EE55),
    to: Color(0xFF7CD828),
  );
  static const green = TileIconGradient(
    from: Color(0xFF6CD888),
    to: Color(0xFF3CBC65),
  );
  static const mint = TileIconGradient(
    from: Color(0xFF54E0AC),
    to: Color(0xFF2CC885),
  );
  static const teal = TileIconGradient(
    from: Color(0xFF58D0C8),
    to: Color(0xFF34B8A8),
  );

  // ── Blues ─────────────────────────────────────────────────────────────────
  static const cyan = TileIconGradient(
    from: Color(0xFF40E0F4),
    to: Color(0xFF1CB8D8),
  );
  static const sky = TileIconGradient(
    from: Color(0xFF65C8FF),
    to: Color(0xFF2CA0F0),
  );
  static const blue = TileIconGradient(
    from: Color(0xFF5E90FF),
    to: Color(0xFF3868EC),
  );
  static const navy = TileIconGradient(
    from: Color(0xFF6888E8),
    to: Color(0xFF4060CC),
  );

  // ── Indigo / Purples ──────────────────────────────────────────────────────
  static const indigo = TileIconGradient(
    from: Color(0xFF7878FA),
    to: Color(0xFF5555E0),
  );
  static const lavender = TileIconGradient(
    from: Color(0xFFA880EE),
    to: Color(0xFF7858CC),
  );
  static const purple = TileIconGradient(
    from: Color(0xFFC070EC),
    to: Color(0xFF9040CC),
  );

  // ── Pinks ─────────────────────────────────────────────────────────────────
  static const fuchsia = TileIconGradient(
    from: Color(0xFFEC4CCC),
    to: Color(0xFFCC28A4),
  );
  static const pink = TileIconGradient(
    from: Color(0xFFFF78A0),
    to: Color(0xFFEC4880),
  );
  static const rose = TileIconGradient(
    from: Color(0xFFFF90A8),
    to: Color(0xFFEC5880),
  );

  // ── Neutrals ──────────────────────────────────────────────────────────────
  static const brown = TileIconGradient(
    from: Color(0xFFCC9858),
    to: Color(0xFFA07038),
  );
  static const slate = TileIconGradient(
    from: Color(0xFF88A8C8),
    to: Color(0xFF5880B0),
  );
}
