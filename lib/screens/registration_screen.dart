import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(labelText: 'Confirm Password'),
              obscureText: true,
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Validate input and submit registration data
                _register();
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }

  void _register() async {
    String username = _usernameController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    // Example: Check if passwords match
    if (password == confirmPassword) {
      try {
        final response = await http.post(
          Uri.parse('http://127.0.0.1:8000/auth/register/'),
          body: {
            'username': username,
            'password': password,
          },
        );

        if (response.statusCode == 201) {
          // Registration success
          _showSuccessMessage();
        } else {
          // Registration failed
          _showErrorMessage('Registration failed. Please try again.');
        }
      } catch (e) {
        // Handle network or server errors
        _showErrorMessage('Error during registration. Please try again.');
      }
    } else {
      // Passwords do not match, display an error message
      _showErrorMessage('Passwords do not match');
    }
  }

  void _showSuccessMessage() {
    // Implement how you want to handle successful registration
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Registration Success'),
        content: Text('Your account has been registered successfully.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showErrorMessage(String message) {
    // Implement how you want to handle registration errors
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Registration Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
