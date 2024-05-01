import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField<T> extends StatelessWidget {
  final String? label;
  final String? hintText;
  final String? initialValue;
  final double? topPadding;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  final VoidCallback? onEditingComplete;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final bool isPassword;
  final bool enabled;
  final bool autofocus;
  final ValueNotifier<bool>? notifierShowPassword;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final bool readOnly;
  final void Function()? onTap;
  final Color filledColor;
  final Color textColor;
  final int maxLines;
  final bool labelOnBottom;
  final Color labelColor;
  final double horizontalPadding;
  final double verticalPadding;
  final void Function(String)? onFieldSubmitted;
  final Key? textFiledKey;

  const CustomTextField({
    super.key,
    @required this.label,
    @required this.hintText,
    this.textFiledKey,
    this.initialValue,
    this.topPadding,
    this.controller,
    this.inputFormatters,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword = false,
    this.enabled = true,
    this.autofocus = false,
    this.textInputAction,
    this.keyboardType,
    this.textCapitalization,
    this.notifierShowPassword,
    this.validator,
    this.onSaved,
    this.readOnly = false,
    this.onTap,
    this.onEditingComplete,
    this.filledColor = Colors.white,
    this.textColor = Colors.black,
    this.maxLines = 1,
    this.labelOnBottom = false,
    this.onFieldSubmitted,
    this.labelColor = Colors.black,
    this.horizontalPadding = 20,
    this.verticalPadding = 10,
  }) : assert(!isPassword || (isPassword && notifierShowPassword != null),
            'notifierShowPassword should not null when isPassword is true');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label?.isNotEmpty == true && labelOnBottom == false)
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 5, top: topPadding ?? 5),
            child: Text(
              label ?? "",
              style: TextStyle(color: labelColor, fontSize: 14),
            ),
          ),
        isPassword
            ? ValueListenableBuilder(
                valueListenable: notifierShowPassword!,
                builder: (context, notifier, child) {
                  return buildTextFormField(context);
                })
            : buildTextFormField(context),
        if (label?.isNotEmpty == true && labelOnBottom == true)
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 5, top: topPadding ?? 5),
            child: Text(
              label ?? "",
              style: TextStyle(color: labelColor, fontSize: 14),
            ),
          ),
      ],
    );
  }

  buildTextFormField(BuildContext context) {
    double border = maxLines == 1 ? 50.0 : 10.0;
    return TextFormField(
      key: textFiledKey,
      initialValue: initialValue,
      autofocus: autofocus,
      controller: controller,
      obscureText: isPassword ? notifierShowPassword?.value ?? false : false,
      enabled: enabled,
      readOnly: readOnly,
      onTap: onTap,
      maxLines: maxLines,
      textInputAction: textInputAction ?? TextInputAction.next,
      inputFormatters: inputFormatters,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      keyboardType: keyboardType ?? TextInputType.text,
      onFieldSubmitted: onFieldSubmitted,
      style: TextStyle(
          color: !enabled ? Colors.black12 : textColor,
          fontSize: 16,
          fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border),
          borderSide: const BorderSide(color: Colors.black12, width: 1),
        ),
        filled: true,
        contentPadding: EdgeInsets.only(
          left: horizontalPadding,
          top: verticalPadding,
          bottom: verticalPadding,
          right: horizontalPadding,
        ),
        fillColor: filledColor,
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border),
          borderSide: const BorderSide(color: Colors.white10, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border),
          borderSide: const BorderSide(color: Colors.black45, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border),
          borderSide: const BorderSide(color: Colors.red),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon ??
            (isPassword
                ? ValueListenableBuilder(
                    valueListenable: notifierShowPassword!,
                    builder: (context, notifier, child) {
                      return IconButton(
                        onPressed: () {
                          notifierShowPassword?.value =
                              !(notifierShowPassword?.value ?? false);
                        },
                        icon: Icon(
                          notifierShowPassword?.value == true
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: Colors.black,
                        ),
                      );
                    })
                : null),
      ),
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      onChanged: onChanged,
      validator: validator,
      onSaved: onSaved,
      onEditingComplete: onEditingComplete,
    );
  }
}
