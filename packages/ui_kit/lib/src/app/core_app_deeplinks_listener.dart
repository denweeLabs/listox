import 'dart:async';
import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';

class CoreAppDeeplinksListener extends StatefulWidget {
  const CoreAppDeeplinksListener({
    super.key,
    required this.child,
    required this.onRedirect,
  });

  final Widget child;
  final void Function(Uri)? onRedirect;

  @override
  State<CoreAppDeeplinksListener> createState() => _CoreAppDeeplinksListenerState();
}

class _CoreAppDeeplinksListenerState extends State<CoreAppDeeplinksListener>
    with AutomaticKeepAliveClientMixin<CoreAppDeeplinksListener> {
  late final appLinks = AppLinks();

  StreamSubscription<Uri>? deeplinksSubscription;

  @override
  void initState() {
    super.initState();
    deeplinksSubscription ??= appLinks.uriLinkStream.listen(redirect);
  }

  void redirect(Uri? link) {
    if (!mounted || link == null) return;
    widget.onRedirect?.call(link);
  }

  @override
  void dispose() {
    deeplinksSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}
