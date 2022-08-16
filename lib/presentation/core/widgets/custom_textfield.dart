import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sizer/sizer.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.autofocus = false,
      this.autoCorrect = false,
      this.errorText,
      this.controller,
      this.counterText,
      this.initialVal,
      this.enabled = true,
      this.hintText,
      this.initialValue,
      this.keyboardType,
      this.labelText,
      this.obscureText = false,
      this.onChanged,
      this.suffixIconTap,
      this.onFieldSubmitted,
      this.onEditingComplete,
      this.onTap,
      this.isImp = false,
      this.prefixIcon,
      this.readOnly = false,
      this.inputWithLabel = false,
      this.suffixIcon,
      this.suffixIconConstraints,
      this.textInputAction,
      this.validator,
      this.height,
      this.width,
      this.isUpload = false,
      this.inputFormatters,
      this.textCapitalization,
      this.expands = false,
      this.maxLength,
      this.maxLines,
      this.minLines,
      this.borderLess})
      : super(key: key);

  final TextCapitalization? textCapitalization;
  final Function()? onTap;
  final Function()? suffixIconTap;
  final bool enabled;
  final bool readOnly;
  final bool autoCorrect;
  final String? initialVal;
  final Function(String)? onChanged;
  final bool autofocus;
  final List<TextInputFormatter>? inputFormatters;
  final bool? inputWithLabel;
  final String? labelText;
  final bool? isImp;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool obscureText;
  final String? initialValue;
  final TextInputType? keyboardType;
  final double? height;
  final double? width;
  final TextInputAction? textInputAction;
  final Function(String?)? onFieldSubmitted;
  final Function()? onEditingComplete;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? counterText;
  final BoxConstraints? suffixIconConstraints;
  final String? errorText;
  final bool isUpload;
  final bool expands;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final bool? borderLess;

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      gapPadding: 0,
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Color(0xFFDDE2E5), width: 0.5),
    );

    TextFormField textFormField = TextFormField(
      controller: controller,
      initialValue: initialVal,
      cursorColor: Theme.of(context).primaryColor,
      cursorHeight: isUpload ? 0 : null,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      cursorWidth: isUpload ? 0 : 2.0,
      obscureText: obscureText,
      autocorrect: autoCorrect,
      inputFormatters: inputFormatters,
      onTap: onTap,
      enabled: !readOnly,
      keyboardType: isUpload ? TextInputType.none : keyboardType,
      decoration: InputDecoration(
        counter: const Offstage(),
        border: borderLess == true
            ? InputBorder.none
            : outlineInputBorder.copyWith(),
        errorBorder: outlineInputBorder.copyWith(
            borderSide: const BorderSide(color: Color(0xFFEA4335))),
        filled: true,
        fillColor: Colors.white,
        disabledBorder: outlineInputBorder.copyWith(),
        prefixIcon: prefixIcon != null
            ? GestureDetector(child: Center(child: prefixIcon))
            : null,
        prefixIconConstraints: prefixIcon != null
            ? BoxConstraints(
                maxWidth: 14.w,
              )
            : null,
        suffixIconConstraints: suffixIcon != null
            ? BoxConstraints(
                maxWidth: 14.w,
              )
            : null,
        suffixIcon: suffixIcon != null
            ? GestureDetector(
                onTap: suffixIconTap,
                child: Center(
                  child: suffixIcon,
                ),
              )
            : null,
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(
          // vertical: 1.sp,
          horizontal: 10.sp,
        ).copyWith(right: suffixIcon == null ? 10.sp : 0),
        hintStyle: TextStyle(
            overflow: TextOverflow.ellipsis,
            color: const Color(0xFFABB3BB),
            fontSize: 12.sp),
        errorText: errorText,
      ),
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      // expands: expands,
      // minLines: minLines,
      // maxLines: maxLines,
      // maxLength: maxLength,
    );

    return SizedBox(
      width: width ?? double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                labelText ?? ' ',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 1.h,
              ),
            ],
          ),
          textFormField
        ],
      ),
    );
  }
}
