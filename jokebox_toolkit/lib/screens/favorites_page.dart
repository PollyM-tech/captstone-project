import 'package:flutter/material.dart';
import '../models/joke.dart';

class FavoritesPage extends StatelessWidget {
  final List<Joke> favorites;
  final void Function(String id) onRemove;

  const FavoritesPage({
    super.key,
    required this.favorites,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorites')),
      body: favorites.isEmpty
          ? const Center(child: Text('No favorites yet. Add some jokes!'))
          : ListView.separated(
              itemCount: favorites.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, i) {
                final joke = favorites[i];
                return ListTile(
                  title: Text(joke.text),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => onRemove(joke.id),
                  ),
                );
              },
            ),
    );
  }
}
