import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme.dart';
import 'package:mental_health_app/features/music/presentation/pages/music_player_screen.dart';

class PlaylistScreen extends StatelessWidget {
  PlaylistScreen({super.key});
  final List<Map<String, String>> songs = [
    {
      'title': 'Daily Dose of Happiness',
      'artist': 'Echorio the Novice Artist',
      'thumbnail': 'assets/child-with-dog.jpeg',
    },
    {
      'title': 'Daily Dose of Sadness',
      'artist': 'Echorio the Beginner Artist',
      'thumbnail': 'assets/child-with-dog.jpeg',
    },
    {
      'title': 'Daily Dose of Madness',
      'artist': 'Echorio the Mad Artist',
      'thumbnail': 'assets/child-with-dog.jpeg',
    },
    {
      'title': 'Daily Dose of Weirdness',
      'artist': 'Echorio the Odd Artist',
      'thumbnail': 'assets/child-with-dog.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Playlist', style: Theme.of(context).textTheme.titleMedium,),
        backgroundColor: DefaultColors.white,
        elevation: 1,
        centerTitle: false,
      ),
      body: Container(
        color: DefaultColors.white,
        child: ListView.builder(
          itemCount: songs.length,
          itemBuilder: (context, index){
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(songs[index]['thumbnail']!),
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 15),
              title: Text(songs[index]['title']!, style: Theme.of(context).textTheme.labelMedium,),
              subtitle: Text(songs[index]['artist']!, style: Theme.of(context).textTheme.labelSmall,),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MusicPlayerScreen()),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
