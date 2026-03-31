import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/presentation/shared/constants/groceries_constants.dart';
import 'package:ui_kit/ui_kit.dart';

class GroceryIconSelector extends StatefulWidget {
  const GroceryIconSelector({
    super.key,
    required this.onSelected,
    required this.selectedIcon,
  });

  final ValueChanged<String> onSelected;
  final String selectedIcon;

  @override
  State<GroceryIconSelector> createState() => _GroceryIconSelectorState();
}

class _GroceryIconSelectorState extends State<GroceryIconSelector> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    final approxColumnWidth = 22.w;
    final selectedIconPos = kGroceryPredefinedIcons.indexOf(widget.selectedIcon);
    final scrollOffset = selectedIconPos > 12
        ? (selectedIconPos - 4) * approxColumnWidth
        : 42.w;
    scrollController = ScrollController(initialScrollOffset: scrollOffset);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: scrollController,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 26.w),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      itemCount: kGroceryPredefinedIcons.length,
      itemBuilder: (context, index) {
        final iconPath = kGroceryPredefinedIcons[index];
        final isSelected = iconPath == widget.selectedIcon;

        return SurfaceContainer.ellipse(
          onTap: () => widget.onSelected(iconPath),
          color: isSelected
              ? context.theme.colorScheme.primary
              : Colors.transparent,
          hoverColor: context.theme.colorScheme.secondary,
          elevation: isSelected ? 3 : 0,
          child: Center(
            child: CommonAppRawIcon(
              path: iconPath,
              color: isSelected ? context.lightIconColor : context.iconColor,
              size: 30,
            ),
          ),
        );
      },
    );
  }
}
