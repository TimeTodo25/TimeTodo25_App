import 'package:flutter/material.dart';

class TimerButton extends StatefulWidget {
  final VoidCallback onTap;
  final Color color;
  final String title;

  const TimerButton(
      {super.key,
      required this.onTap,
      required this.color,
      required this.title});

  @override
  State<TimerButton> createState() => _TimerStartButtonState();
}

class _TimerStartButtonState extends State<TimerButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.color,
          ),
          child: Center(
            child: Text(widget.title,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
