import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme.dart';
import 'package:mental_health_app/features/meditation/presentation/widgets/feeling_button.dart';
import 'package:mental_health_app/features/meditation/presentation/widgets/task_card.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset('assets/menu.png'),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          SizedBox(width: 16,)
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back, Echorio',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 32,),
              Text(
                'How are you feeling today?',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeelingButton(image: 'assets/happy.png', label: 'Happy', color: DefaultColors.pink),
                  FeelingButton(image: 'assets/calm.png', label: 'Calm', color: DefaultColors.purple),
                  FeelingButton(image: 'assets/relax.png', label: 'Relax', color: DefaultColors.orange),
                  FeelingButton(image: 'assets/focus.png', label: 'Focus', color: DefaultColors.lightteal)
                ],
              ),
              SizedBox(height: 24,),
              Text(
                'Today\'s Task',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 16,),
              TaskCard(
                  title: 'Morning',
                  description: 'Let\'s open up to the thing that matters among the people',
                  color: DefaultColors.task1),
              SizedBox(height: 16,),
              TaskCard(
                  title: 'Afternoon',
                  description: 'Let\'s open up to the thing that matters among the people',
                  color: DefaultColors.task2),
              SizedBox(height: 16,),
              TaskCard(
                  title: 'Evening',
                  description: 'Let\'s open up to the thing that matters among the people',
                  color: DefaultColors.task3),
            ],
          ),
        ),
      ),
    );
  }
}
