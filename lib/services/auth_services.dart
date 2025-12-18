import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final String baseUrl =
      "http://159.65.15.249:1337/"; // Replace with your Strapi URL

  /// Sign In (Login) function
  Future<bool> signIn(String identifier, String password) async {
    final url = Uri.parse("$baseUrl/api/auth/local");
    final response = await http.post(url, body: {
      'identifier': identifier, // email or username
      'password': password,
    });

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      String jwt = data['jwt'];

      // Save token locally
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('jwt', jwt);

      print("Login successful! JWT saved.");
      return true;
    } else {
      print('Login failed: ${response.body}');
      return false;
    }
  }

  /// Register (Sign Up) function
  Future<bool> register(String username, String email, String password) async {
    final url = Uri.parse("$baseUrl/api/auth/local/register");
    final response = await http.post(url, body: {
      'username': username,
      'email': email,
      'password': password,
    });

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      String jwt = data['jwt'];

      // Save token locally
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('jwt', jwt);

      print("Registration successful! JWT saved.");
      return true;
    } else {
      print('Registration failed: ${response.body}');
      return false;
    }
  }

  /// Optional: Log Out function
  Future<void> signOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('jwt');
    print("Logged out successfully.");
  }
}
