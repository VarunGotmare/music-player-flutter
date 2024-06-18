import 'package:flutter/material.dart';
import 'package:musique/core/theme/app_palette.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton(
      {super.key, required this.name, required this.onTap});
  final String name;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
        gradient: LinearGradient(
          colors: [
            Pallete.gradient1,
            Pallete.gradient2,
          ],
        ),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Pallete.transparentColor,
          shadowColor: Pallete.transparentColor,
          fixedSize: const Size(395, 55),
        ),
        child: Text(
          name,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
