import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class CustomButton extends TextButton {
  CustomButton({
    Key? key,
    Function()? onPressed,
    required String text,
    bool loading = false,
    bool secondary = false,
    bool destructive = false,
    bool outlined = false,
    Widget? prefixIcon,
    Widget? suffixIcon,
    Color? color,
    Color? textColor,
    GlobalKey<FormState>? formKey,
    required BuildContext context,
  }) : super(
    key: key,
    child: SizedBox(
      height: 52.h,
      child: Center(
        child: loading
            ? SizedBox(
          width: 24.w,
          child: CircularProgressIndicator.adaptive(
            strokeWidth: 1.4,
            valueColor: AlwaysStoppedAnimation(
              outlined || secondary
                  ? const Color(0xff783793)
                  : Colors.white,
            ),
          ),
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixIcon != null)
              prefixIcon,
            if (prefixIcon != null)
              SizedBox(
                width: 12.w,
              ),
            Text(
              text,
              style: TextStyle(
                color: outlined
                    ? const Color(0xFF344053)
                    : Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            if (suffixIcon != null)
              SizedBox(
                width: 12.w,
              ),
            if (suffixIcon != null)
              suffixIcon,
          ],
        ),
      ),
    ),
    onPressed: loading
        ? null
        : onPressed == null
        ? null
        : () {
      if (formKey?.currentState?.validate() ?? true) {
        FocusScope.of(context).unfocus();
        onPressed();
      }
    },
    style: ButtonStyle(
      elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> states) {
          return 0;
        },
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return const Color(0xff783793).withOpacity(0.5);
          }
          return color ??
              (outlined
                  ? Colors.white
                  : const Color(0xff783793));
        },
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return const Color(0xff783793).withOpacity(0.5);
          }
          return color ??
              (outlined
                  ? Colors.white
                  : const Color(0xff783793));
        },
      ),
      padding: MaterialStateProperty.resolveWith(
            (states) {
          return EdgeInsets.symmetric(
            horizontal: 24.r
          );
        },
      ),
      alignment: Alignment.center,
      // elevation: MaterialStateProperty<double>().,
      shape: MaterialStateProperty.resolveWith(
            (states) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26.r),
            side: outlined
                ? BorderSide(
              color: color ??
                  (destructive
                      ? Colors.red
                      : const Color(0xFFCFD4DC)),
            )
                : BorderSide.none,
          );
        },
      ),
    ),
  );
}