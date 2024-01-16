import 'package:flutter/material.dart';
import 'package:mad_project/components/my_button.dart';
import 'package:mad_project/screen/shop_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool showPassword = false;

  // Define the character limit for username and password
  final int usernameLimit = 20;
  final int passwordLimit = 20;

  void _handleLogin() {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();

    // Validate username
    if (username.isEmpty || !username.contains('@')) {
      _showErrorSnackbar('Invalid username');
      return;
    }

    // Validate password
    if (password.isEmpty) {
      _showErrorSnackbar('Password cannot be empty');
      return;
    }

    // Validate password strength
    if (!_isStrongPassword(password)) {
      _showErrorSnackbar('Password should be strong');
      return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const ShopPage(),
      ),
    );
  }

  bool _isStrongPassword(String password) {
    RegExp capitalLetterRegex = RegExp(r'[A-Z]');
    RegExp digitRegex = RegExp(r'[0-9]');

    return password.length >= 8 &&
        capitalLetterRegex.hasMatch(password) &&
        digitRegex.hasMatch(password);
  }

  void _showErrorSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text(
          'Login Yourself',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.lightGreen,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
              maxLength: usernameLimit,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              obscureText: !showPassword,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    showPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
              ),
              maxLength: passwordLimit,
            ),
            const SizedBox(height: 16),
            MyButton(
              color: Colors.lightGreen,
              onTap: _handleLogin,
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
