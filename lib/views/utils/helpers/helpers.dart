import 'package:flutter/material.dart';

class Helpers {
  static bool isEmail(String text) {
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    return emailRegex.hasMatch(text);
  }

  static bool isStrongPassword(String password) {
    // Kiểm tra mật khẩu có ít nhất 8 ký tự, 1 ký tự hoa, 1 ký tự thường và 1 số
    final RegExp lengthRegex = RegExp(r'.{8,}');
    final RegExp uppercaseRegex = RegExp(r'[A-Z]');
    final RegExp lowercaseRegex = RegExp(r'[a-z]');
    final RegExp digitRegex = RegExp(r'[0-9]');

    return lengthRegex.hasMatch(password) &&
        uppercaseRegex.hasMatch(password) &&
        lowercaseRegex.hasMatch(password) &&
        digitRegex.hasMatch(password);
  }

  static bool signUpCheckValidate(
    String email,
    String password,
    String rePassword,
  ) {
    if (email.trim().isEmpty ||
        password.trim().isEmpty ||
        rePassword.trim().isEmpty) {
      return false;
    } else if (!Helpers.isEmail(email)) {
      return false;
    } else if (!Helpers.isStrongPassword(password)) {
      return false;
    } else if (password != rePassword) {
      return false;
    } else {
      return true;
    }
  }

  static bool signInCheckValidate(String email, String password) {
    if (email.trim().isEmpty || password.trim().isEmpty) {
      return false;
    } else if (!Helpers.isEmail(email)) {
      return false;
    } else {
      return true;
    }
  }

  static void showAppDialog(BuildContext context, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
          contentPadding: const EdgeInsets.all(20.0),
          content: Text(
            content,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        );
      },
    );
  }
}
