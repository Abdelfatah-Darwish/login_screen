import 'package:flutter/material.dart';

Widget defaultButton({
  Color background = Colors.blue,
  double width = double.infinity,
  required Function()? function,
  required String text,
  bool isUpperCase = true,
  double radius = 10,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType keyboardType,
  bool ispassword = false,
  void Function(String)? onSubmit,
  required String? Function(String?)? validate,
  void Function(String)? onChange,
  required String lable,
  required IconData prefix,
  Widget? suffix,
}) =>
    TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      obscureText: ispassword,
      onFieldSubmitted: onSubmit,
      validator: validate,
      onChanged: onChange,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix,
        labelText: lable,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
