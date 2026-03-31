import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ---------------------------------------------------------------------------
// Render-layer scale transition, centered on the widget.
// Same approach as PixelSlideTransition / FadeTransition: the render object
// subscribes to the animation directly via addListener(markNeedsPaint).
// Uses context.pushTransform() to promote the child to a TransformLayer once;
// GPU updates only the layer's matrix on each tick — no CPU repaint.
// ---------------------------------------------------------------------------

class PixelScaleTransition extends SingleChildRenderObjectWidget {
  const PixelScaleTransition({
    super.key,
    required this.scale,
    super.child,
  });

  final Animation<double> scale;

  @override
  RenderPixelScale createRenderObject(BuildContext context) =>
      RenderPixelScale(scale);

  @override
  void updateRenderObject(BuildContext context, RenderPixelScale renderObject) =>
      renderObject.scale = scale;
}

class RenderPixelScale extends RenderProxyBox {
  RenderPixelScale(Animation<double> scale) : _scale = scale;

  Animation<double> _scale;

  set scale(Animation<double> value) {
    if (_scale == value) return;
    if (attached) _scale.removeListener(markNeedsPaint);
    _scale = value;
    if (attached) {
      _scale.addListener(markNeedsPaint);
      markNeedsPaint();
    }
  }

  // Force compositing so the child is painted into a TransformLayer once.
  // On each animation tick markNeedsPaint() updates only the layer's matrix
  // on the GPU — the child subtree is never repainted on the CPU.
  @override
  bool get alwaysNeedsCompositing => true;

  @override
  void attach(PipelineOwner owner) {
    super.attach(owner);
    _scale.addListener(markNeedsPaint);
  }

  @override
  void detach() {
    _scale.removeListener(markNeedsPaint);
    super.detach();
  }

  Matrix4 _buildMatrix() {
    final s = _scale.value;
    final center = size.center(Offset.zero);
    // T(center) * Scale(s) * T(-center) — scale around widget center
    return Matrix4.translationValues(center.dx, center.dy, 0.0)
      ..multiply(Matrix4.diagonal3Values(s, s, 1.0))
      ..multiply(Matrix4.translationValues(-center.dx, -center.dy, 0.0));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    layer = context.pushTransform(
      needsCompositing,
      offset,
      _buildMatrix(),
      super.paint,
      oldLayer: layer as TransformLayer?,
    );
  }

  @override
  void applyPaintTransform(RenderObject child, Matrix4 transform) {
    transform.multiply(_buildMatrix());
  }
}
