import 'package:flutter/material.dart';
import '../utils/colors.dart';

// ignore: must_be_immutable
class LoginTextFormField extends StatelessWidget {
  final double? height;
  final BoxConstraints? preIconMaxWidth;
  final BoxConstraints? sufIconMaxWidth;
  final String? hint;
  final bool? obscureText;
  final bool? isDense;
  final Color? hintcolor;
  final Color? inputcolor;
  final Color? bordercolor;
  final Color? cursorcolor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardtype;
  final TextInputAction? inputaction;
  final AutovalidateMode? autoValidateMode;
  void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? Function(String?) validation;

  LoginTextFormField({
    Key? key,
    this.height,
    this.preIconMaxWidth,
    this.sufIconMaxWidth,
    this.hint,
    this.obscureText,
    this.isDense,
    this.hintcolor,
    this.inputcolor,
    this.bordercolor,
    this.cursorcolor,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardtype,
    this.inputaction,
    this.autoValidateMode,
    this.onChanged,
    this.controller,
    required this.validation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      cursorColor: cursorcolor ?? white,
      textInputAction: inputaction,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        color: inputcolor ?? black,
      ),
      autofocus: false,
      keyboardType: keyboardtype,
      onChanged: onChanged,
      autovalidateMode: autoValidateMode ?? AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hint,

        hintStyle: TextStyle(color: hintcolor ?? white),
        suffixIcon: suffixIcon,
        suffixIconConstraints: sufIconMaxWidth,
        prefixIcon: prefixIcon,
        prefixIconConstraints: preIconMaxWidth,

        errorMaxLines: 2,
        isDense: isDense,

        // Border States
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: bordercolor ?? white)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: bordercolor ?? white)),
      ),
      validator: validation,
    );
  }
}

// ignore: must_be_immutable
class SignUpTextFormField extends StatelessWidget {
  final int? maxline;
  final double? height;
  final BoxConstraints? preIconMaxWidth;
  final BoxConstraints? sufIconMaxWidth;
  final double? borderradius;
  final double? borderwidth;
  final double? focusborderwidth;
  final String? hint;

  final bool? obscureText;

  final bool? isDense;

  final Color? hintcolor;

  final Color? inputcolor;
  final Color? bordercolor;
  final Color? focusbordercolor;
  final Color? cursorcolor;
  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? suffixIcon;
  final TextInputType? keyboardtype;
  final TextInputAction? inputaction;
  final AutovalidateMode? autoValidateMode;
  void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? Function(String?) validation;

  SignUpTextFormField({
    Key? key,
    this.maxline,
    this.height,
    this.preIconMaxWidth,
    this.sufIconMaxWidth,
    this.borderradius,
    this.borderwidth,
    this.focusborderwidth,
    this.hint,
    this.obscureText,
    this.isDense,
    this.hintcolor,
    this.inputcolor,
    this.bordercolor,
    this.focusbordercolor,
    this.cursorcolor,
    this.prefix,
    this.prefixIcon,
    this.suffix,
    this.suffixIcon,
    this.keyboardtype,
    this.inputaction,
    this.autoValidateMode,
    this.onChanged,
    this.controller,
    required this.validation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: primary,
      borderRadius: BorderRadius.circular(25),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        cursorColor: cursorcolor ?? black,
        maxLines: obscureText == true ? 1 : maxline,
        textInputAction: inputaction,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          color: inputcolor ?? black,
        ),
        autofocus: false,
        keyboardType: keyboardtype,
        onChanged: onChanged,
        autovalidateMode:
            autoValidateMode ?? AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: hintcolor, fontWeight: FontWeight.w400),
          prefix: prefix,
          prefixIcon: prefixIcon,
          suffix: suffix,
          suffixIcon: suffixIcon,
          contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
          isDense: isDense ?? true,
          // Border States
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: bordercolor ?? primary, width: borderwidth ?? 1.2),
              borderRadius: BorderRadius.circular(borderradius ?? 30)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: focusbordercolor ?? primary,
                width: focusborderwidth ?? 1.2,
              ),
              borderRadius: BorderRadius.circular(borderradius ?? 30)),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: red,
              width: focusborderwidth ?? 1.2,
            ),
            borderRadius: BorderRadius.circular(borderradius ?? 30),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: red,
              width: focusborderwidth ?? 1.2,
            ),
            borderRadius: BorderRadius.circular(borderradius ?? 30),
          ),
        ),
        validator: validation,
      ),
    );
  }
}
