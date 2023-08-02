import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store/config/boiler/resource_boiler.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator<String?>? validator;
  final Function(String)? onFieldSubmitted;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final Function()? onEditingComplete;
  final bool readOnly;
  final bool obscureText;
  final int? maxLength;
  final int maxLines;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatter;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final TextDirection? textDirection;

  const TextFormFieldWidget({
    super.key,
    required this.controller,
    this.validator,
    this.onFieldSubmitted,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.obscureText = false,
    this.readOnly = false,
    this.maxLength,
    this.maxLines = 1,
    this.textInputAction,
    this.keyboardType,
    this.inputFormatter,
    this.hintText,
    this.labelText,
    this.helperText,
    this.textDirection = TextDirection.ltr,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: TextFormField(
        controller: controller,
        validator: validator,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        textDirection: textDirection,
        onTap: onTap,
        onEditingComplete: onEditingComplete,
        readOnly: readOnly,
        obscureText: obscureText,
        maxLength: maxLength,
        maxLines: maxLines,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        inputFormatters: inputFormatter ??
            [
              if (keyboardType == TextInputType.number)
                FilteringTextInputFormatter.digitsOnly
            ],
        style: TextStyleConfig.textFormFieldStyle,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          hintStyle: TextStyleConfig.hintStyle,
          labelStyle: TextStyleConfig.hintStyle,
          helperStyle: TextStyleConfig.textFormFieldHelperStyle,
          enabledBorder: TextStyleConfig.textFormFieldBorderStyle,
          focusedBorder: TextStyleConfig.textFormFieldFocusedBorderStyle,
          errorStyle: TextStyleConfig.textFormFieldErrorStyle,
          errorBorder: TextStyleConfig.textFormFieldErrorBorderStyle,
          focusedErrorBorder:
              TextStyleConfig.textFormFieldFocusedErrorBorderStyle,
          contentPadding: SpacingConfig.s16h14v,
        ),
      ),
    );
  }
}
