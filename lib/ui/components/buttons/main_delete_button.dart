import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/components/widget/responsive_center.dart';

class MainDeleteButton extends StatefulWidget {

  final VoidCallback onTap;

  const MainDeleteButton({
    super.key,
    required this.onTap,
  });

  @override
  State<MainDeleteButton> createState() => _MainDeleteButtonState();
}

class _MainDeleteButtonState extends State<MainDeleteButton> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
        child: InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(width: 2, color: grey1)
        ),
        child: Padding(
          padding:  EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Text(
              '삭제',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: grey3
              )
          ),
        ),
      ),
    )
    );
  }
}
