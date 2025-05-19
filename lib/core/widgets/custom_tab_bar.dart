import 'package:evently/core/widgets/custom_tab.dart';
import 'package:evently/data/DM/category_DM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({
    super.key,
    required this.categories,
    required this.selectedTabBg,
    required this.unselectedTabBg,
    required this.selectedLabelColor,
    required this.unselectedLabelColor,
    this.verticalPadding = 0,
    required this.onCategoryTabClicked,
  });

  final List<CategoryDM> categories;
  final Color selectedTabBg;
  final Color unselectedTabBg;
  final Color selectedLabelColor;
  final Color unselectedLabelColor;
  final double verticalPadding;
  final void Function(CategoryDM) onCategoryTabClicked;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.categories.length,
      child: TabBar(
          padding: REdgeInsets.symmetric(vertical: widget.verticalPadding),
          labelPadding: REdgeInsets.symmetric(horizontal: 10),
          onTap: _onTabItemClicked,
          isScrollable: true,
          indicatorColor: Colors.transparent,
          tabAlignment: TabAlignment.start,
          tabs: widget.categories
              .map(
                (category) => CustomTab(
              selectedTabBg: widget.selectedTabBg,
              unselectedTabBg: widget.unselectedTabBg,
              selectedLabelColor: widget.selectedLabelColor,
              unselectedLabelColor: widget.unselectedLabelColor,
              categoryDM: category,
              isSelected:
              widget.categories.indexOf(category) == selectedIndex,
            ),
          )
              .toList()),
    );
  }

  void _onTabItemClicked(int newTabIndex) {
    widget.onCategoryTabClicked(widget.categories[newTabIndex]);
    setState(() {
      selectedIndex = newTabIndex;
    });
  }
}