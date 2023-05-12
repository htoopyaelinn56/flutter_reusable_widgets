import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    required this.onSubmit,
    this.isLoading,
    this.bgColor,
    this.loadingColor = Colors.white,
    this.width,
    this.height,
    this.padding = const EdgeInsets.all(8),
    this.disabledBgColor,
    this.borderRadius = 5,
    required this.child,
  }) : super(key: key);
  final void Function()? onSubmit;
  final bool? isLoading;
  final Color? bgColor;
  final Widget child;
  final Color? loadingColor;
  final double? width;
  final double? height;
  final Color? disabledBgColor;
  final EdgeInsetsGeometry padding;
  final double borderRadius;

  factory CommonButton.square({
    Color? bgColor,
    required void Function()? onSubmit,
    required Widget child,
    double size = 45,
    bool? isLoading,
  }) {
    return CommonButton(
      width: size,
      height: size,
      isLoading: isLoading,
      onSubmit: onSubmit,
      bgColor: bgColor,
      child: child,
    );
  }

  factory CommonButton.circle({
    Color? bgColor,
    required void Function()? onSubmit,
    required Widget child,
    double size = 45,
    bool? isLoading,
  }) {
    return CommonButton(
      borderRadius: size * size,
      width: size,
      height: size,
      isLoading: isLoading,
      onSubmit: onSubmit,
      bgColor: bgColor,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: padding,
          backgroundColor: bgColor,
          disabledBackgroundColor: disabledBgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onSubmit == null || (isLoading ?? false)
            ? null
            : () {
                onSubmit?.call();
              },
        child: !(isLoading ?? false)
            ? child
            : Row(
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
              ),
      ),
    );
  }
}
