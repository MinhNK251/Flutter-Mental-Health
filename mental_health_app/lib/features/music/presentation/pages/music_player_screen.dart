import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme.dart';

class MusicPlayerScreen  extends StatelessWidget {
  const MusicPlayerScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DefaultColors.white,
        elevation: 0,
        leading: Image.asset('assets/down-arrow.png'),
        actions: [
          Image.asset('assets/transcript-icon.png'),
          const SizedBox(width: 16,)
        ],
      ),
      backgroundColor: DefaultColors.white,
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // artwork
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/child-with-dog.jpeg',
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16,),
              Text('Daily Dose of Happiness', style: Theme.of(context).textTheme.labelLarge,),
              Text('By : Echorio the Novice Artist', style: Theme.of(context).textTheme.labelSmall,),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.shuffle, color: DefaultColors.pink,)
                  ),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.skip_previous, color: DefaultColors.pink,)
                  ),
                  IconButton(
                      iconSize: 60,
                      onPressed: (){},
                      icon: Icon(Icons.pause_circle_filled, color: DefaultColors.pink,)
                  ),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.skip_next, color: DefaultColors.pink,)
                  ),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.repeat_one, color: DefaultColors.pink,)
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}
