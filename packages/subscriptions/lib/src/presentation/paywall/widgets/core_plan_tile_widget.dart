part of 'package:subscriptions/src/presentation/paywall/paywall_page.dart';

class CorePlanTile extends StatelessWidget {
  const CorePlanTile({
    super.key,
    required this.title,
    required this.isSelected,
    required this.theme,
    required this.borderRadius,
    this.subtitle,
    this.subtitleWidget,
    this.suffix,
    this.onTap,
  }) : assert(
         subtitle != null || subtitleWidget != null,
         'Either subtitle or subtitleWidget must be provided.',
       );

  final String title;
  final String? subtitle;
  final Widget? subtitleWidget;
  final bool isSelected;
  final PaywallTheme theme;
  final BorderRadius borderRadius;
  final Widget? suffix;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final subtitleStyle = TextStyle(
      fontSize: 16.0,
      color: theme.textColor.withValues(alpha: 0.65),
      fontWeight: FontWeight.w500,
      letterSpacing: -0.4,
    );

    return _TapFade(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? theme.primaryAccentColor : theme.borderColor,
          ),
          borderRadius: borderRadius,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: theme.textColor,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.4,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 2),
                    subtitleWidget ??
                        Text(
                          subtitle!,
                          style: subtitleStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                  ],
                ),
              ),
              if (suffix != null) ...[const SizedBox(width: 8), suffix!],
              const SizedBox(width: 8),
              _PaywallCheckbox(
                isChecked: isSelected,
                selectedColor: theme.secondaryAccentColor,
                unselectedBorderColor: theme.borderColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
