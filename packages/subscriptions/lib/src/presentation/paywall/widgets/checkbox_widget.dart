part of 'package:subscriptions/src/presentation/paywall/paywall_page.dart';

class _PaywallCheckbox extends StatelessWidget {
  const _PaywallCheckbox({
    required this.isChecked,
    required this.selectedColor,
    required this.unselectedBorderColor,
  });

  final bool isChecked;
  final Color selectedColor;
  final Color unselectedBorderColor;

  static const size = 20.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isChecked ? selectedColor : Colors.transparent,
          border: Border.all(
            color: isChecked ? Colors.transparent : unselectedBorderColor,
          ),
        ),
        child: Center(
          child: AnimatedScale(
            scale: isChecked ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 400),
            curve: Curves.fastEaseInToSlowEaseOut,
            child: SvgPicture.asset(
              PaywallAssets.checkmark,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              width: 18,
            ),
          ),
        ),
      ),
    );
  }
}
