import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String loginUrl = 'https://api.ezuite.com/api/External_Api/Mobile_Api/Invoke';

  static Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await http.post(
      Uri.parse(loginUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "API_Body": [
          {
            "Unique_Id": username,
            "Pw": password,
          }
        ],
        "Api_Action": "GetUserData",
        "Company_Code": username,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to login');
    }
  }
}