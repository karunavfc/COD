class Comment {
  String authorName;
  String authorImageUrl;
  String text;

  Comment({
    this.authorName,
    this.authorImageUrl,
    this.text,
  });
}

final List<Comment> comments = [
  Comment(
    authorName: 'Sanjay',
    authorImageUrl:'assets/sanjay.png',
    text: 'Loving this photo!!',
  ),
  Comment(
    authorName: 'Gokul',
    authorImageUrl: 'assets/gokul.png',
    text: 'One of the best photos of you...',
  ),
  Comment(
    authorName: 'Kaviyarasu',
    authorImageUrl: 'assets/kavi.png',
    text: 'Can\'t wait for you to post more!',
  ),
  Comment(
    authorName: 'Gowtham',
    authorImageUrl: 'assets/gow.png',
    text: 'Nice job',
  ),
  Comment(
    authorName: 'karuna karan',
    authorImageUrl: 'assets/images/user0.png',
    text: 'Thanks everyone :)',
  ),
];
