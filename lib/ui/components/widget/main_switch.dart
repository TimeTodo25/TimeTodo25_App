import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class MainSwitch extends StatefulWidget {
  final String title;
  final ValueChanged<bool> onChanged; // 스위치 상태가 변경될 때 수행할 로직
  final TextStyle? textStyle;
  final bool? is_checked;

  const MainSwitch(
      {super.key,
      required this.title,
      required this.onChanged, // 매개변수로 onChanged 받음
      this.textStyle,
      this.is_checked});

  @override
  State<MainSwitch> createState() => _MainSwitchState();
}

class _MainSwitchState extends State<MainSwitch> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: widget.textStyle?.copyWith() ??
                Theme.of(context).textTheme.bodyMedium,
          ),
          // 아이콘 크기 조정이 필요하다면 Transform.scale 사용하기
          Transform.scale(
            scale: 0.9,
            child: CupertinoSwitch(
              value: widget.is_checked ?? _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
                widget.onChanged(value);
              },
              activeColor: mainBlue, // 사용할 색상
            ),
          ),
        ],
      ),
    );
  }
}
