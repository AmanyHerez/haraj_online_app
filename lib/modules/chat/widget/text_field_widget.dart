import 'package:flutter/material.dart';


class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    this.suffixIcon,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.isPassword = false,
    this.isEmail = false,
    this.isChatField = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.onChange,
    this.onEditingComplete,
    this.onSubmitted,
  }) : super(key: key);

  final TextEditingController controller;
  final Widget? suffixIcon;
  final String hintText;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool isPassword;
  final bool isEmail;
  final bool isChatField;
  final int maxLines;
  final int minLines;
  final Function(String)? onChange;
  final Function()? onEditingComplete;
  final Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.trim().isEmpty && !isChatField) {
          return 'This field is required *';
        } else if (isPassword && value.length < 6) {
          return 'Password must be 6 characters at least!';
        } else if (isEmail && (!value.contains('@') || !value.contains('.'))) {
          return 'Enter valid email!';
        }
        return null;
      },
      textInputAction: textInputAction,
      keyboardType: isEmail ? TextInputType.emailAddress : keyboardType,
      keyboardAppearance: Brightness.dark,
      obscureText: obscureText,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        decoration: TextDecoration.none,
      ),
      cursorColor: Colors.purple,
      cursorHeight: 40,
      // maxLines: isChatField ? 3 : maxLines,
      minLines: minLines,
      onChanged: onChange,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onSubmitted,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 35),
        hintText: hintText,
        hintStyle: TextStyle(
 color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        suffixIcon: suffixIcon,
        errorMaxLines: 2,
        errorStyle: const TextStyle(
          color: Colors.red,
        ),
        filled: true,
        fillColor:Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(isChatField ? 100: 20),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(isChatField ? 100 : 20),
          borderSide: const BorderSide(
            color: Colors.purple,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(isChatField ? 100 : 20),
          borderSide: const BorderSide(
            color:  Colors.purple,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(isChatField ? 100 : 20),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(isChatField ? 100 : 20),
          borderSide: const BorderSide(
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
