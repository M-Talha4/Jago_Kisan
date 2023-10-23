import 'package:flutter/material.dart';
import '../utils/colors.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final double? width;
  final double? height;
  final Color? bgcolor;
  final Color? shadowcolor;
  final Color? txtcolor;
  final bool? hasShadow;
  final FontWeight? fontWeight;
  final double? textsize;
  final double? borderradius;

  const CustomButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.width,
      this.height,
      this.bgcolor,
      this.shadowcolor,
      this.txtcolor,
      this.hasShadow = false,
      this.fontWeight,
      this.textsize,
      this.borderradius});

  @override
  Widget build(BuildContext context) {
    final width1 = MediaQuery.of(context).size.width;
    final height1 = MediaQuery.of(context).size.height;

    return InkWell(
      splashColor: primary,
      onTap: onTap,
      child: Container(
        width: width ?? width1 * 0.5,
        height: height ?? height1 * 0.06,
        decoration: BoxDecoration(
            boxShadow: hasShadow!
                ? [
                    BoxShadow(
                        offset: const Offset(0, -3),
                        blurRadius: 5,
                        spreadRadius: 2,
                        color: shadowcolor ?? grey.withOpacity(0.5))
                  ]
                : [],
            borderRadius: BorderRadius.circular(borderradius ?? 20),
            color: bgcolor ?? primary),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: txtcolor ?? black,
                fontWeight: fontWeight ?? FontWeight.w900,
                fontSize: textsize ?? width1 * 0.055),
          ),
        ),
      ),
    );
  }
}

class LoadingButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final bool startLoading;
  final double? width;
  final double? height;
  final Color? bgcolor;
  final Color? shadowcolor;
  final Color? txtcolor;
  final FontWeight? fontWeight;
  final double? textsize;
  final double? borderradius;

  const LoadingButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.startLoading,
      this.width,
      this.height,
      this.bgcolor,
      this.shadowcolor,
      this.txtcolor,
      this.fontWeight,
      this.textsize,
      this.borderradius});

  @override
  Widget build(BuildContext context) {
    final width1 = MediaQuery.of(context).size.width;
    final height1 = MediaQuery.of(context).size.height;

    return Material(
      color: transparent,
      child: InkWell(
        splashColor: primary,
        onTap: onTap,
        child: Container(
          width: width ?? width1 * 0.4,
          height: height ?? height1 * 0.06,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 3),
                    blurRadius: 7,
                    spreadRadius: 5,
                    color: shadowcolor ?? grey.withOpacity(0.5))
              ],
              borderRadius: BorderRadius.circular(borderradius ?? 4),
              color: bgcolor ?? primary),
          child: Center(
            child: startLoading
                ? SizedBox(
                    height: height != null ? height! * 0.66 : height1 * 0.04,
                    width: height != null ? height! * 0.66 : height1 * 0.04,
                    child: const CircularProgressIndicator(
                      color: white,
                      strokeWidth: 2,
                    ),
                  )
                : Text(
                    text,
                    style: TextStyle(
                        color: txtcolor ?? white,
                        fontWeight: fontWeight ?? FontWeight.bold,
                        fontSize: textsize ?? width1 * 0.038),
                  ),
          ),
        ),
      ),
    );
  }
}
