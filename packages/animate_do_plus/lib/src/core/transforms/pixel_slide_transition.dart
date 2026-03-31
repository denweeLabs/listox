import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ---------------------------------------------------------------------------
// Render-layer slide transition for pixel offsets.
// Mirrors the approach used by FadeTransition / RenderAnimatedOpacity:
// the render object adds itself as a listener to the animation and calls
// markNeedsPaint() directly — zero widget rebuilds during animation frames.
// Uses context.pushTransform() so the child is promoted to a TransformLayer
// once; GPU updates only the layer's matrix on each tick — no CPU repaint.
// ---------------------------------------------------------------------------

class PixelSlideTransition extends SingleChildRenderObjectWidget {
  const PixelSlideTransition({
    super.key,
    required this.position,
    super.child,
  });

  final Animation<Offset> position;

  @override
  RenderPixelSlide createRenderObject(BuildContext context) =>
      RenderPixelSlide(position);

  @override
  void updateRenderObject(BuildContext context, RenderPixelSlide renderObject) =>
      renderObject.position = position;
}

class RenderPixelSlide extends RenderProxyBox {
  RenderPixelSlide(Animation<Offset> position) : _position = position;

  Animation<Offset> _position;

  set position(Animation<Offset> value) {
    if (_position == value) return;
    if (attached) _position.removeListener(markNeedsPaint);
    _position = value;
    if (attached) {
      _position.addListener(markNeedsPaint);
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
    _position.addListener(markNeedsPaint);
  }

  @override
  void detach() {
    _position.removeListener(markNeedsPaint);
    super.detach();
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final t = _position.value;
    layer = context.pushTransform(
      needsCompositing,
      offset,
      Matrix4.translationValues(t.dx, t.dy, 0.0),
      super.paint,
      oldLayer: layer as TransformLayer?,
    );
  }

  @override
  void applyPaintTransform(RenderObject child, Matrix4 transform) {
    final t = _position.value;
    transform.multiply(Matrix4.translationValues(t.dx, t.dy, 0.0));
  }
}
