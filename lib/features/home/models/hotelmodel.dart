class Hotelmodel {
  Hotelmodel(
      {required this.image,
      required this.name,
      required this.points,
      required this.place,
      required this.tag,
      required this.height,
      required this.width,
      required this.favorite});
  final String image;
  final String name;
  final String points;
  final String place;
  final String tag;
  final double height;
  final double width;
  bool favorite = false;
}
