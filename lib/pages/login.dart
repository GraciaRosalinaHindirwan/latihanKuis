import 'package:flutter/material.dart';
import 'package:latihan_kuis/theme/appColors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: 
      Container(
        child: Column(
          children: [
            Text(
              "Login", 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16, 
                color: AppColors.textPrimary,
                fontWeight: FontWeight.bold, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}