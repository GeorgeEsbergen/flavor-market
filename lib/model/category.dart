class Category {
  final String name;
  final int numOfCourses;
  final String image;

  Category(this.name, this.numOfCourses, this.image);
}

var categoriesData = [
  {"name": "Marketing", 'courses': 17, 'image': "assets/images/marketing.jpeg"},
  {"name": "UX Design", 'courses': 25, 'image': "assets/images/ux.jpeg"},
  {"name": "Photography", 'courses': 13, 'image': "assets/images/photo.jpeg"},
  {"name": "Business", 'courses': 17, 'image': "assets/images/mm.jpeg"},
];

List<Category> categories = categoriesData
    .map((item) => Category(item['name'].toString(), item['courses'] as int,
        item['image'].toString()))
    .toList();
