import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class MainAlert extends StatefulWidget {
  final String msg;
  final String? positiveButtonText;
  final String? negativeButtonText;
  final VoidCallback onPositivePressed;
  final VoidCallback onNegativePressed;

  const MainAlert({super.key,
    required this.msg,
    this.positiveButtonText,
    this.negativeButtonText,
    required this.onPositivePressed,
    required this.onNegativePressed,
  });

  @override
  State<MainAlert> createState() => _MainAlertState();
}

class _MainAlertState extends State<MainAlert> {

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white.withOpacity(0),
      child:
      Column(
        children: [
          SizedBox(height: 330),
          // 질문
          Container(
            alignment: Alignment.center,
            width: 500,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
              child: Text(
                  widget.msg,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium
              ),
            ),
          ),
          // 긍정 버튼
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                color: mainRed
            ),
            child: MaterialButton(
              onPressed: widget.onPositivePressed,
              child: Text(
                  widget.positiveButtonText ?? '확인',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white))
          )),
          // 버튼 사이 공간
          const SizedBox(height: 12),
          // 부정 버튼
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: mainBlue
            ),
            child: MaterialButton(
              onPressed: widget.onNegativePressed,
              child: Text(
                  widget.negativeButtonText ?? '취소',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white))
            )),
          ]),
    );
  }
}