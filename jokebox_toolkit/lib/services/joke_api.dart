import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/joke.dart';

class JokeApi {
  static final Uri _uri = Uri.parse('https://icanhazdadjoke.com/');

  static Future<Joke> fetchRandomJoke() async {
    final res = await http.get(
      _uri,
      headers: const {
        'Accept': 'application/json',
        'User-Agent': 'JokeBoxToolkit/1.0',
      },
    );

    if (res.statusCode != 200) {
      throw Exception('API error: ${res.statusCode}');
    }

    final data = json.decode(res.body) as Map<String, dynamic>;
    return Joke.fromJson(data);
  }
}
