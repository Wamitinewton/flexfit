import 'package:flutter/material.dart';

class PowerButtonUtil extends StatelessWidget {
  const PowerButtonUtil(
      {super.key,
      required this.value,
      required this.onChanged,
      required this.label});
  final bool value;
  final Function(bool?) onChanged;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              onChanged(!value);
            },
            child: Center(child: Switch(value: value, onChanged: onChanged)),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
