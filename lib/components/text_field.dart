import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class CustomTextField extends TextFormField {
  CustomTextField(
      {Key? key,
        FocusNode? focusNode,
        String? Function(String?)? validator,
        Function(String)? function,
        Function()? onTap,
        Function()? onEditingComplete,
        TextInputAction? textInputAction,
        bool enabled = true,
        bool readOnly = false,
        bool autocorrect = false,
        bool autoFocus = true,
        bool? obscure,
        bool useDefaultFont = false,
        Widget? prefix,
        Widget? suffix,
        TextEditingController? controller,
        double? fontSize,
        Color? textColor,
        Color? fillColor,
        int? minLines,
        int? maxLines,
        Iterable<String>? autofillHints,
        TextInputType type = TextInputType.text,
        String? hint,
        String? label,
        String? initialValue,
        ValueChanged<String>? onChanged,
        required BuildContext context,
      })
      : super(
    key: key,
    onEditingComplete: onEditingComplete,
    autocorrect: autocorrect,
    focusNode: focusNode,
    onTap: onTap,
    autofillHints: autofillHints,
    onFieldSubmitted: function,
    textInputAction: textInputAction ?? TextInputAction.next,
    enabled: enabled,
    readOnly: readOnly,
    autofocus: autoFocus,
    textCapitalization: obscure != null
        ? TextCapitalization.none
        : TextCapitalization.sentences,
    controller: controller,
    obscureText: obscure ?? false,
    keyboardType: type,
    cursorColor: const Color(0xff783793),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 14.w,
        vertical: 10.h,
      ),
      isDense: true,
      enabled: enabled,

      fillColor: fillColor ?? Colors.white,
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
      hintStyle: TextStyle(
        color: const Color(0xFF667084),
        fontSize: 16.sp,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
      ),
      prefixIcon: prefix == null
          ? null
          : Padding(
        padding: EdgeInsets.only(
          left: 14.w,
          right: 14.w,
        ),
        child: prefix,
      ),
      prefixIconConstraints: BoxConstraints(
        maxHeight: 28.h,
      ),
      suffixIcon: Padding(
        padding: EdgeInsets.only(
          left: 14.w,
          right: 14.w,
        ),
        child: suffix,
      ),
      suffixIconConstraints: BoxConstraints(
        maxHeight: 28.h,
      ),
    ),
    style: const TextStyle(
      color: Color(0xFF667084),
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    onChanged: onChanged,
    minLines: minLines ?? maxLines,
    maxLines: maxLines ?? 1,
    validator: (value) {
      if (obscure != null && value!.length < 6) {
        return 'Password length must be atleast 6';
      } else if (value == null || value.isEmpty) {
        return 'Input $hint';
      } else if (hint!.toLowerCase().contains('phone') &&
          !((value.startsWith('0') && value.length == 11) ||
              value.length == 10)) {
        return 'Input valid phone number';
      }

      return null;
    },
  );
}