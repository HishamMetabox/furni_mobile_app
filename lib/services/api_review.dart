import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:furni_mobile_app/product/data/reviewdata.dart';


class ReviewService {

  final String apiUrl = "http://159.65.15.249:1337/api/review-webs";

 Future<List<ReviewWeb>> fetchReviewWebs({String? productId}) async {
    String url = apiUrl;
  if (productId != null) {
    url += "?filters[productId][ProductId][\$eq]=$productId&populate=*";
  } else {
    url += "?populate=*"; // Always populate to get the nested product data
  }
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> decodedData = json.decode(response.body);
        
        // Strapi v4/v5 wraps the list in a 'data' field
        final List<dynamic> reviewsJson = decodedData['data'];
        
        return reviewsJson.map((json) => ReviewWeb.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load reviews: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error connecting to server: $e');
    }
  }
  Future<void> postReview({
  required String name,
  required String comment,
  required int rating,
  required List<String> productIds,
}) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? token = prefs.getString('jwt'); // Or however you store your JWT

  try {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
        if (token != null) 'Authorization': 'Bearer $token',
      },
      body: json.encode({
        "data": {
          "name": name,
          "Comment": comment, 
          "rating": rating,
          "Date": DateTime.now().toIso8601String(),
          "productId": productIds,
         
        }
      }),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      print("Review posted successfully");
    } else {
      print("Failed to post: ${response.body}");
      throw Exception('Failed to post review');
    }
  } catch (e) {
    throw Exception('Error: $e');
  }
}
}