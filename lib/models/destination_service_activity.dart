class Activity {
  final String name;
  final String location;
  final double? rating;
  final int? reviews;
  final String openingHours;
  final double price;
  final String imagePath;

  Activity({
    required this.name,
    required this.location,
    this.rating,
    this.reviews,
    required this.openingHours,
    required this.price,
    required this.imagePath,
  });
}
