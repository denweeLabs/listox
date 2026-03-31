import 'package:flutter/material.dart';

class SubpagesController {
  static const _forwardAnimationDuration = Duration(milliseconds: 600);
  static const _reverseAnimationDuration = Duration(milliseconds: 450);
  static const _homePage = 0;

  SubpagesController({double viewportFraction = 1.0})
    : _pageController = PageController(
        viewportFraction: viewportFraction,
      ),
      _baseNotifier = ValueNotifier(null),
      _subPageNotifier = ValueNotifier(null);

  final PageController _pageController;
  PageController get pageController => _pageController;

  final ValueNotifier<Widget?> _baseNotifier;
  ValueNotifier<Widget?> get baseNotifier => _baseNotifier;

  final ValueNotifier<Widget?> _subPageNotifier;
  ValueNotifier<Widget?> get subPageNotifier => _subPageNotifier;

  bool get isHomePage => _subPageNotifier.value == null;

  Widget? _prevPage;
  Widget? _nextPage;


  var _isDisposed = false;

  void navigateTo(Widget page) {
    if (_isDisposed) return;

    _nextPage = _baseNotifier.value;
    _prevPage = _subPageNotifier.value;

    if (_prevPage != null) {
      _baseNotifier.value = _prevPage;
    }

    _subPageNotifier.value = page;

    _pageController.jumpToPage(0);
    _pageController.animateToPage(
      1,
      duration: _forwardAnimationDuration,
      curve: Curves.fastEaseInToSlowEaseOut,
    );
  }

  Future<void> goBack() async {
    if (_isDisposed || _subPageNotifier.value == null) return;

    final isGoingHome = _baseNotifier.value == null && _nextPage == null;
    final targetPage = _nextPage;

    await _pageController.animateToPage(
      _homePage,
      duration: _reverseAnimationDuration,
      curve: Curves.easeInOutCubic,
    );

    if (_isDisposed) return;

    if (isGoingHome) {
      _subPageNotifier.value = null;
      _baseNotifier.value = null;
      _prevPage = null;
      _nextPage = null;
      return;
    }

    _subPageNotifier.value = _baseNotifier.value;
    _baseNotifier.value = targetPage;

    _prevPage = _baseNotifier.value;
    _nextPage = null;

    _pageController.jumpToPage(1);
  }

  Future<void> goHome() async {
    if (_isDisposed || _subPageNotifier.value == null) return;

    _baseNotifier.value = null;

    await _pageController.animateToPage(
      _homePage,
      duration: _reverseAnimationDuration,
      curve: Curves.easeInOutCubic,
    );

    if (_isDisposed) return;

    _subPageNotifier.value = null;
    
    _prevPage = null;
    _nextPage = null;
  }

  void goBackOrPop(VoidCallback popCallback) {
    if (_isDisposed) return;
    if (isHomePage) {
      return popCallback();
    }
    goBack();
  }

  void dispose() {
    _isDisposed = true;
    _pageController.dispose();
    _baseNotifier.dispose();
    _subPageNotifier.dispose();
  }
}

class SubpagesScope extends InheritedWidget {
  const SubpagesScope({
    super.key,
    required this.controller,
    required super.child,
  });

  final SubpagesController controller;

  static SubpagesController of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<SubpagesScope>();
    assert(scope != null, 'NestedPageScope not found in context');
    return scope!.controller;
  }

  @override
  bool updateShouldNotify(SubpagesScope oldWidget) =>
      controller != oldWidget.controller;
}

class CommonSubpagesNavigator extends StatefulWidget {
  const CommonSubpagesNavigator({
    super.key,
    required this.controller,
    required this.home,
  });

  final SubpagesController controller;
  final Widget home;

  static const _baseOpacityCurve = Curves.easeInSine;
  static const _subpageOpacityCurve = Interval(0.55, 1.0);

  @override
  State<CommonSubpagesNavigator> createState() =>
      _CommonSubpagesNavigatorState();
}

class _CommonSubpagesNavigatorState extends State<CommonSubpagesNavigator> {
  _PageDrivenAnimation<double>? _baseOpacity;
  _PageDrivenAnimation<double>? _subpageOpacity;

  @override
  void initState() {
    super.initState();
    _initAnimations(widget.controller.pageController);
  }

  @override
  void didUpdateWidget(CommonSubpagesNavigator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      _initAnimations(widget.controller.pageController);
    }
  }

  @override
  void dispose() {
    _baseOpacity?.dispose();
    _subpageOpacity?.dispose();
    super.dispose();
  }

  void _initAnimations(PageController pageController) {
    _baseOpacity?.dispose();
    _subpageOpacity?.dispose();

    _baseOpacity = _PageDrivenAnimation(
      pageListenable: pageController,
      transform: (page) {
        final value = 1.0 - CommonSubpagesNavigator._baseOpacityCurve.transform(page);
        return value < 0.3 ? 0.3 : value;
      },
    );

    _subpageOpacity = _PageDrivenAnimation(
      pageListenable: pageController,
      transform: (page) {
        final value = CommonSubpagesNavigator._subpageOpacityCurve.transform(page);
        return value < 0.3 ? 0.3 : value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SubpagesScope(
      controller: widget.controller,
      child: PageView(
        controller: widget.controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          FadeTransition(
            opacity: _baseOpacity!,
            child: RepaintBoundary(
              child: ValueListenableBuilder<Widget?>(
                valueListenable: widget.controller.baseNotifier,
                builder: (_, base, _) => base ?? widget.home,
              ),
            ),
          ),
          FadeTransition(
            opacity: _subpageOpacity!,
            child: RepaintBoundary(
              child: ValueListenableBuilder<Widget?>(
                valueListenable: widget.controller.subPageNotifier,
                builder: (_, subPage, _) => subPage ?? const SizedBox.shrink(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PageDrivenAnimation<T> extends Animation<T>
    with
        AnimationLazyListenerMixin,
        AnimationLocalListenersMixin,
        AnimationLocalStatusListenersMixin {
  _PageDrivenAnimation({required this.pageListenable, required this.transform});

  final PageController pageListenable;
  final T Function(double page) transform;

  @override
  void didStartListening() {
    pageListenable.addListener(notifyListeners);
  }

  @override
  void didStopListening() {
    pageListenable.removeListener(notifyListeners);
  }

  void dispose() {
    pageListenable.removeListener(notifyListeners);
  }

  @override
  T get value {
    if (!pageListenable.hasClients) return transform(0.0);
    return transform(pageListenable.page ?? 0.0);
  }

  @override
  AnimationStatus get status => AnimationStatus.forward;
}
