class Task {
  String title;
  bool isMarkedForRemoval;

  Task({
    required this.title,
    this.isMarkedForRemoval = false,
  });

  setMarkedForRemoval(bool value) {
    isMarkedForRemoval = value;
  }
}
