class Joke {
  final String id;
  final String text;

  const Joke({required this.id, required this.text});

  factory Joke.fromJson(Map<String, dynamic> json) {
    return Joke(
      id: (json['id'] ?? '').toString(),
      text: (json['joke'] ?? '').toString(),
    );
  }
}
