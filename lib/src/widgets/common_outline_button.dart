import 'package:flutter/material.dart';

class CommonOutlinedButton extends StatelessWidget {
  const CommonOutlinedButton({
    super.key,
    required this.onSubmit,
    this.isLoading,
    this.fgColor = const Color(0xFF000000),
    this.loadingColor = Colors.grey,
    this.width,
    this.height,
    this.bgColor,
    this.borderRadius = 5,
    required this.child,
    this.padding = const EdgeInsets.all(8),
  });
  final void Function()? onSubmit;
  final bool? isLoading;
  final Color fgColor;
  final Color? loadingColor;
  final double? width;
  final double? height;
  final Widget child;
  final Color? bgColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final disabled = onSubmit == null || (isLoading ?? false);
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: padding,
          side: BorderSide(
            color: disabled ? Colors.grey : fgColor,
            width: 1.5,
          ),
          foregroundColor: disabled ? Colors.grey : fgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          disabledBackgroundColor: Colors.grey.shade100,
          disabledForegroundColor: Colors.grey,
          backgroundColor: bgColor,
        ),
        onPressed: disabled ? null : onSubmit,
        child: (isLoading ?? false)
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(
                        color: loadingColor,
                      ),
                    ),
                  ),
                ],
              )
            : child,
      ),
    );
  }
}
