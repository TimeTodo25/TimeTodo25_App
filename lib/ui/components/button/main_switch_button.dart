import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class MainSwitchButton extends StatefulWidget {
  const MainSwitchButton({super.key});

  @override
  State<MainSwitchButton> createState() => _MainSwitchButtonState();
}

class _MainSwitchButtonState extends State<MainSwitchButton> {
  var _toggle = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _toggle,
      onChanged: (value) {
        setState(() {
          _toggle = value;
        });
      },
      // 스위치 내부 동그라미 색상 설정
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.grey; // 비활성화 상태일 때의 색상
          }
          return _toggle ? Colors.white : Colors.white; // 활성화 및 비활성화 상태의 색상
        },
      ),
      // 스위치 바깥 선 색상 설정
      trackColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.grey; // 비활성화 상태의 트랙 색상
          }
          return _toggle ? mainBlue : grey3; // 활성화 및 비활성화 상태의 트랙 색상
        },
      ),
    );
  }
}
