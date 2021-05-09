class ClsCourses {
  String title;
  String description;
  String image;
  String path;
  String rating;
  String enrolled;

  ClsCourses({
    this.title,
    this.description,
    this.image,
    this.path,
    this.rating,
    this.enrolled,
  });
}

var listCourses = [
  ClsCourses(
    title: 'Flutter',
    description: 'Start makes Multiplatform Mobile Apps using Flutter by Google',
    image: 'assets/images/flutter.png',
    path: 'Mobile Apps',
    rating: '4.8/5.0',
    enrolled: '121'
  ),
  ClsCourses(
      title: 'Kotlin',
      description: 'Start learning new Programming Languages with Kotlin',
      image: 'assets/images/kotlin.png',
      path: 'Programming',
      rating: '4.1/5.0',
      enrolled: '101'
  ),
  ClsCourses(
      title: 'Swift Essentials',
      description: 'Start to learn languages to makes IOS Apps',
      image: 'assets/images/swift.png',
      path: 'Programming',
      rating: '4.4/5.0',
      enrolled: '111'
  ),
  ClsCourses(
      title: 'React',
      description: 'Start makes Web App using React by Facebook',
      image: 'assets/images/react.png',
      path: 'Programming',
      rating: '4.4/5.0',
      enrolled: '100'
  )
];