import 'package:flutter/material.dart';

class CategoryTile extends StatefulWidget {
  final String title;
  final Color themeColor;
  final Color backgroundColor;
  final BoxShadow? boxShadow;
  final Widget? trailingIcon;
  final GestureTapCallback onTap;

  const CategoryTile({
    super.key,
    required this.title,
    required this.themeColor,
    required this.backgroundColor,
    required this.onTap,
    this.boxShadow,
    this.trailingIcon,
  });

  @override
  _CategoryTileState createState() => _CategoryTileState();
}

class _CategoryTileState extends State<CategoryTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        alignment: AlignmentDirectional.centerStart,
        height: 45,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: widget.boxShadow != null
              ? [widget.boxShadow!]
              : [],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                widget.title.length > 20
                    ? widget.title.substring(0, 20) + '...'
                    : widget.title,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: widget.themeColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            widget.trailingIcon ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
