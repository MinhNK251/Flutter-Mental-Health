// Bloc -> Event (Play) -> Trigger a player ask you to play -> State: make a goal(1)
// Bloc -> Event (Play) -> Trigger a player ask you to play -> State: lose a goal(2)
// Bloc -> Event (Play) -> Trigger a player ask you to play -> State: pass(3)
abstract class NavigationEvent{}

class NavigateTo extends NavigationEvent{
  final int index;
  NavigateTo({required this.index});
}
