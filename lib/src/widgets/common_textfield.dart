import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    Key? key,
    this.title,
    this.controller,
    this.isError,
    this.errorText,
    this.maxLines = 1,
    this.height = 100,
    this.width = 300,
    this.isDense = true,
    this.suffix,
    this.hintText,
    this.prefix,
    this.textInputType,
    this.inputFormatters,
    this.onChanged,
    this.inactiveBorderColor = Colors.grey,
    this.filledColor,
    this.onTap,
    this.onSubmitted,
    this.labelText,
    this.enabled = true,
    this.obscureText = false,
    this.titleFontSize,
    this.labelColor,
    this.textColor,
    this.focusColor,
    this.titleColor,
    this.cursorColor,
    this.lableStyle,
    this.validator,
    this.textInputAction = TextInputAction.next,
    this.autofocus = false,
    this.keyboardType,
    this.hintStyle = const TextStyle(fontSize: 14),
    this.borderRadius = 10,
    this.style,
    this.hasBorder = true,
    this.textAlign = TextAlign.start,
    this.initialValue,
    this.focusNode,
    this.borderColor,
    this.borderThickenss,
    this.autoValidateMode,
    this.errorMaxLines,
    this.isCollapsed = false,
    this.contentPadding,
  }) : super(key: key);
  final String? title;
  final TextEditingController? controller;
  final bool? isError;
  final String? errorText;
  final TextStyle? style;
  final int? maxLines;
  final double height;
  final double width;
  final bool isDense;
  final Widget? suffix;
  final String? hintText;
  final Widget? prefix;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String>? onChanged;
  final Color inactiveBorderColor;
  final Color? filledColor;
  final GestureTapCallback? onTap;
  final Function(String)? onSubmitted;
  final String? labelText;
  final Color? labelColor;
  final bool enabled;
  final bool obscureText;
  final double? titleFontSize;
  final Color? textColor;
  final Color? titleColor;
  final Color? focusColor;
  final Color? cursorColor;
  final TextStyle? lableStyle;
  final String? Function(String)? validator;
  final TextInputAction? textInputAction;
  final bool autofocus;
  final TextInputType? keyboardType;
  final TextStyle? hintStyle;

  final double borderRadius;
  final bool hasBorder;
  final TextAlign textAlign;
  final String? initialValue;
  final FocusNode? focusNode;
  final Color? borderColor;
  final double? borderThickenss;
  final AutovalidateMode? autoValidateMode;
  final int? errorMaxLines;
  final bool isCollapsed;
  final EdgeInsetsGeometry? contentPadding;
  @override
  Widget build(BuildContext context) {
    // bool isDesktop = ResponsiveWrapper.of(context).isLargerThan(TABLET);
    return SizedBox(
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            SizedBox(
              height: 30,
              child: Text(
                title!,
                style: TextStyle(
                  color: titleColor,
                ),
              ),
            ),
          TextFormField(
            autovalidateMode: autoValidateMode,
            focusNode: focusNode,
            autofocus: autofocus,
            textInputAction: textInputAction,
            validator: (str) => validator?.call(str!),
            showCursor: true,
            obscureText: obscureText,
            enabled: enabled,
            onFieldSubmitted: onSubmitted,
            onTap: onTap,
            onChanged: onChanged,
            inputFormatters: inputFormatters,
            keyboardType: keyboardType,
            maxLines: maxLines,
            controller: controller,
            cursorColor: cursorColor ?? Theme.of(context).primaryColor,
            style: style,
            textAlign: textAlign,
            initialValue: initialValue,
            decoration: InputDecoration(
              contentPadding: contentPadding,
              errorMaxLines: errorMaxLines,
              floatingLabelStyle: TextStyle(
                color: labelColor,
              ),
              labelStyle: lableStyle,
              labelText: labelText,
              alignLabelWithHint: true,
              hintText: hintText,
              hintStyle: hintStyle,
              isDense: isDense,
              isCollapsed: isCollapsed,
              fillColor: filledColor ?? Colors.white,
              filled: true,
              errorText: (isError ?? false) ? errorText : null,
              border: OutlineInputBorder(
                gapPadding: 0.0,
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius),
                ),
                borderSide: hasBorder ? BorderSide(color: borderColor ?? inactiveBorderColor, width: borderThickenss ?? 1) : BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                gapPadding: 0.0,
                borderSide: BorderSide(color: borderColor ?? Theme.of(context).primaryColor, width: borderThickenss ?? 2),
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                gapPadding: 0.0,
                borderSide: hasBorder ? BorderSide(color: borderColor ?? inactiveBorderColor, width: borderThickenss ?? 1) : BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius),
                ),
              ),
              disabledBorder: OutlineInputBorder(
                gapPadding: 0.0,
                borderSide: hasBorder ? BorderSide(color: borderColor ?? inactiveBorderColor, width: borderThickenss ?? 1) : BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius),
                ),
              ),
              errorBorder: OutlineInputBorder(
                gapPadding: 0.0,
                borderSide: BorderSide(color: borderColor ?? Colors.red, width: borderThickenss ?? 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius),
                ),
              ),
              suffixIcon: suffix,
              prefixIcon: prefix,
            ),
          ),
        ],
      ),
    );
  }
}
