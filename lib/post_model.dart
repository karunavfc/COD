class Post {
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;
  String text;

  Post({
    this.authorName,    
    this.authorImageUrl,
    this.timeAgo,
    this.imageUrl,
    this.text,
  });
}

final List<Post> posts = [
  Post(
    authorName: 'Karuna Karan',
    authorImageUrl: 'assets/images/user0.png',
    timeAgo: '5 min',
    imageUrl: 'assets/images/post1.jpg',
  ),
  Post(
    authorName: 'Nishanth',
    authorImageUrl: 'assets/nisha.png',
    timeAgo: '10 min',
    imageUrl: 'assets/images/post2.png',
    text: 'Ethical Hacking',
  ),
  Post(
    authorName: 'Kaviyarasu',
    authorImageUrl: 'assets/kavi.png',
    timeAgo: '30 min',
    imageUrl: 'assets/images/post1.jpg',
  ),
];

final List<String> stories = [
  'assets/images/1.jpg',
  'assets/images/2.png',
  'assets/images/3.png',
  'assets/images/4.png',
  'assets/images/5.png',
  'assets/images/6.png',
  'assets/images/user2.png',
  'assets/images/user3.png',
];
