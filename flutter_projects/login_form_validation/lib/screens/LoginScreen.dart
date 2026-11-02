import 'package:flutter/material.dart';

const _primary = Color(0xFF34D3A0);
const _onPrimary = Color(0xFF06251B);
const _background = Color(0xFF0E1815);
const _surface = Color(0xFF13241F);
const _border = Color(0xFF2B4A40);
const _text = Color(0xFFE6F5EF);
const _textMuted = Color(0xFF7FA698);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  InputDecoration _decoration(String label, {Widget? suffixIcon}) {
    OutlineInputBorder border(Color color, double width) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color, width: width),
    );
    
    return InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(color: _textMuted),
      floatingLabelStyle: const TextStyle(color: _primary),
      filled: true,
      fillColor: _surface,
      suffixIcon: suffixIcon,
      enabledBorder: border(_border, 1.5),
      focusedBorder: border(_primary, 2),
    );
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message, style: const TextStyle(color: _text)),
          backgroundColor: _surface,
          behavior: SnackBarBehavior.floating,
        ),
      );
  }

  void _handleLogin() {
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      _showMessage('Please enter email and password');
    } else if (!email.contains('@') || !email.contains('.')) {
      _showMessage('Please enter a valid email address');
    } else if (password.length < 6) {
      _showMessage('Password must be at least 6 characters long');
    } else {
      showDialog(
        context: context,
        builder: (BuildContext dialogContext) {
          return AlertDialog(
            backgroundColor: _surface,
            title: const Text(
              'Login Successful',
              style: TextStyle(color: _text),
            ),
            content: const Text(
              'You have successfully logged in.',
              style: TextStyle(color: _textMuted),
            ),
            actions: [
              TextButton(
                style: TextButton.styleFrom(foregroundColor: _primary),
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      appBar: AppBar(
        backgroundColor: _surface,
        foregroundColor: _text,
        elevation: 0,
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 16),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                style: const TextStyle(color: _text),
                cursorColor: _primary,
                decoration: _decoration('Email'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                obscureText: _obscurePassword,
                textInputAction: TextInputAction.done,
                onSubmitted: (_) => _handleLogin(),
                style: const TextStyle(color: _text),
                cursorColor: _primary,
                decoration: _decoration(
                  'Password',
                  suffixIcon: IconButton(
                    color: _textMuted,
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                    onPressed: () =>
                        setState(() => _obscurePassword = !_obscurePassword),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _handleLogin,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _primary,
                  foregroundColor: _onPrimary,
                  minimumSize: const Size.fromHeight(48),
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Login'),
              ),
              const SizedBox(height: 12),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: _textMuted),
                onPressed: () {},
                child: const Text('Forgot password?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
