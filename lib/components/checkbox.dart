import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomCheckbox extends StatefulWidget {
  final bool value;
  const CustomCheckbox({
    super.key,
    this.value = false,
  });

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _value = !_value;
        });
      },
      child: Container(
        height: 24.w,
        width: 24.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: _value ? 0 : 1,
            color: Colors.grey,
          ),
          color: _value ? const Color(0xff783793) : null,
        ),
        child: _value
            ? Icon(
          Icons.check,
          size: 18.w,
          color: Colors.white,
        )
            : null,
      ),
    );
  }
}