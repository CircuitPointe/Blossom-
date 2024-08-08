import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomDropdownField extends DropdownButtonFormField<String> {
  CustomDropdownField({
    Key? key,
    required String? hint,
    required String label,
    FocusNode? focusNode,
    Color? textColor,
    bool autofocus = true,
    bool isExpanded = true,
    bool enabled = true,
    String? value,
    Widget? prefix,
    double? height,
    EdgeInsets? contentPadding,
    required List<String> items,
    Function(String?)? onChanged,
    Function()? onTap,
    required BuildContext context,
  }) : super(
    key: key,
    focusNode: focusNode,
    autofocus: autofocus,
    isExpanded: isExpanded,
    value: value,
    items: items
        .map(
          (e) => DropdownMenuItem(
        value: e,
        child: Text(
          e,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
            color: textColor ?? Colors.black,
          ),
        ),
      ),
    ).toList(),
    icon: const Icon(Icons.keyboard_arrow_down, size: 16,),
    isDense: true,
    elevation: 0,
    style: const TextStyle(
      color: Color(0xFF667084),
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    onChanged: onChanged,
    onTap: onTap,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 14.w,
        vertical: 10.h,
      ),
      enabled: enabled,
      fillColor: Colors.white,
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(
          width: 1.w,
          color: const Color(0xff783793),
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(
          width: 1.w,
          color: const Color(0xFFCFD4DC),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(
          width: 1.w,
          color: const Color(0xFFCFD4DC),
        ),
      ),
      errorBorder: OutlineInputBorder(
        // borderRadius: primaryBorderRadius,
        borderSide: BorderSide(
          width: 1.w,
          color: Colors.red,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(
          width: 1.w,
          color: Colors.red,
        ),
      ),
      hintText: hint,
      hintStyle: const TextStyle(
        color: Color(0xFF667084),
        fontSize: 16,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
      ),
      prefixIcon: prefix == null
          ? null
          : Padding(
        padding: EdgeInsets.only(
          left: 16.w,
          right: contentPadding?.right ?? 12.w,
        ),
        child: prefix,
      ),
      prefixIconConstraints: BoxConstraints(
        maxHeight: height ?? 20.h,
      ),
    ),
    validator: (value) {
      if ((value == null || value.isEmpty) && hint != null) {
        return '${hint.startsWith('Select') ? '' : 'Select '}$hint';
      }

      return null;
    },
  );
}