import 'package:flutter/material.dart';
import 'package:flutter_demo/core/resource/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleSelectionChip extends StatefulWidget {
  final List<String> items;
  final int? selectedIndex;
  final ValueChanged<int>? onChanged;

  const SingleSelectionChip({
    required this.items,
    this.selectedIndex = 0,
    this.onChanged,
  });

  @override
  _SingleSelectionChipState createState() => _SingleSelectionChipState();
}

class _SingleSelectionChipState extends State<SingleSelectionChip> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ChoiceChip(
          showCheckmark: false,
          selectedColor: AppColors.of.primary,
          backgroundColor: AppColors.of.secondaryBackground,
          padding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          label: Container(
            constraints: BoxConstraints(maxWidth: 120.w),
            child: Text(
              widget.items[index],
              style: TextStyle(
                  fontSize: 16,
                  color: index == _selectedIndex
                      ? AppColors.of.primaryBackground
                      : AppColors.of.primaryText), // Example fontSize
            ),
          ),
          selected: _selectedIndex == index,
          onSelected: (bool selected) {
            setState(() {
              _selectedIndex = selected ? index : -1;
              widget.onChanged?.call(_selectedIndex);
            });
          },
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: 8); // Adjust the spacing as needed
      },
      itemCount: widget.items.length,
    );
  }
}
