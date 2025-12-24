class SimulasiCategory {
  final String id;
  final String title;
  final String description;
  final String cardImage;
  final List<SimulasiStep> steps;

  SimulasiCategory({
    required this.id,
    required this.title,
    required this.description,
    required this.cardImage,
    required this.steps,
  });
}

class SimulasiStep {
  final int step;
  final String text;
  final String image;

  SimulasiStep({required this.step, required this.text, required this.image});
}
