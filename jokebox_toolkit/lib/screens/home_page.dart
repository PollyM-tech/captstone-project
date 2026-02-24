import 'package:flutter/material.dart';
import '../models/joke.dart';
import '../services/joke_api.dart';
import 'favorites_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Joke? current;
  String? error;
  bool loading = false;

  final List<Joke> favorites = [];

  @override
  void initState() {
    super.initState();
    _loadJoke();
  }

  Future<void> _loadJoke() async {
    setState(() {
      loading = true;
      error = null;
    });

    try {
      final joke = await JokeApi.fetchRandomJoke();
      setState(() => current = joke);
    } catch (_) {
      setState(
        () => error = 'Failed to load joke. Check internet and try again.',
      );
    } finally {
      setState(() => loading = false);
    }
  }

  bool get _isFav =>
      current != null && favorites.any((j) => j.id == current!.id);

  void _toggleFavorite() {
    if (current == null) return;
    final exists = favorites.any((j) => j.id == current!.id);

    setState(() {
      if (exists) {
        favorites.removeWhere((j) => j.id == current!.id);
      } else {
        favorites.add(current!);
      }
    });
  }

  void _openFavorites() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => FavoritesPage(
          favorites: favorites,
          onRemove: (id) =>
              setState(() => favorites.removeWhere((j) => j.id == id)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JokeBox Toolkit'),
        actions: [
          IconButton(
            tooltip: 'Favorites',
            icon: const Icon(Icons.favorite),
            onPressed: _openFavorites,
          ),
        ],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 560),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Random Joke',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 12),
                    if (loading)
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: CircularProgressIndicator(),
                        ),
                      )
                    else if (error != null)
                      Text(error!, style: const TextStyle(fontSize: 16))
                    else
                      Text(
                        current?.text ?? 'No joke yet.',
                        style: const TextStyle(fontSize: 16, height: 1.35),
                      ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: loading ? null : _loadJoke,
                            icon: const Icon(Icons.refresh),
                            label: const Text('New Joke'),
                          ),
                        ),
                        const SizedBox(width: 12),
                        IconButton(
                          tooltip: _isFav ? 'Remove favorite' : 'Add favorite',
                          onPressed: current == null ? null : _toggleFavorite,
                          icon: Icon(
                            _isFav ? Icons.favorite : Icons.favorite_border,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Favorites: ${favorites.length}',
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
