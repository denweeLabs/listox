part of 'package:subscriptions/src/presentation/paywall/paywall_page.dart';

class _SuccessDialog extends StatelessWidget {
  const _SuccessDialog({
    required this.expiryDate,
    required this.theme,
    required this.strings,
    required this.onDismiss,
  });

  final String expiryDate;
  final PaywallTheme theme;
  final PaywallStrings strings;
  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Lottie.asset(
            PaywallAssets.confettiAnimation,
            fit: BoxFit.cover,
            repeat: false,
            animate: true,
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Material(
              color: Colors.transparent,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: theme.backgroundColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(theme.borderRadius.topLeft.x + 12),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 24,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(28, 38, 28, 32),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PhysicalModel(
                        elevation: 2,
                        shape: BoxShape.circle,
                        color: theme.primaryContainer,
                        shadowColor: Colors.black45,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: SvgPicture.asset(
                            PaywallAssets.verify,
                            colorFilter: ColorFilter.mode(
                              theme.primaryAccentColor,
                              BlendMode.srcIn,
                            ),
                            width: 42,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        strings.successDialogTitle,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.6,
                          color: theme.textColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        strings.successSubtitleBuilder(expiryDate),
                        style: TextStyle(
                          fontSize: 15,
                          color: theme.textColorSecondary,
                          letterSpacing: -0.3,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 32),
                      SizedBox(
                        width: double.infinity,
                        child: _TapFade(
                          onTap: onDismiss,
                          child: PhysicalModel(
                            borderRadius: theme.borderRadius,
                            color: theme.primaryAccentColor,
                            elevation: 4,
                            shadowColor:
                                theme.primaryAccentColor.withValues(alpha: 0.4),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              child: Text(
                                strings.successDialogButtonLabel,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.3,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
