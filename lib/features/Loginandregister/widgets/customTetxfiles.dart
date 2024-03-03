import 'package:flutter/material.dart';

class customtextfiled extends StatelessWidget {
  const customtextfiled(
      {super.key,
      required this.labal,
      required this.hint,
      this.validator,
      this.onChanged,
      required this.obsecur,
      required this.icon,
      this.keyboardType,
      this.onTap});
  final String labal;
  final void Function()? onTap;
  final String hint;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool obsecur;
  final Widget icon;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        onTap: onTap,
        keyboardType: keyboardType,
        validator: validator,
        onChanged: onChanged,
        obscuringCharacter: "*",
        obscureText: obsecur,
        decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 240, 240, 241),
            suffixIcon: icon,
            hintText: hint,
            label: Text(
              labal,
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(20)),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
