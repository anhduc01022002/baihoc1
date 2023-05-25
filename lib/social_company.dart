class Member {
  String name;
  String avatar;
  String fullName;
  DateTime birthDate;
  String phoneNumber;
  String email;
  String gender;
  List<Post> posts;

  Member(
      {required this.name,
        required this.avatar,
        required this.fullName,
        required this.birthDate,
        required this.phoneNumber,
        required this.email,
        required this.gender,
        List<Post>? posts})
      : this.posts = posts ?? [];

  void addPost(Post post) {
    posts.add(post);
  }
}

class Post {
  Member member;
  String content;
  List<String> images;
  List<Comment> comments;

  Post(
      {required this.member,
        required this.content,
        List<String>? images,
        List<Comment>? comments})
      : this.images = images ?? [],
        this.comments = comments ?? [];

  void addComment(Comment comment) {
    comments.add(comment);
  }
}

class Comment {
  Member member;
  String content;

  Comment({required this.member, required this.content});
}

void main() {
  Member duc = Member(
    name: 'Duc',
    avatar: 'avatar.png',
    fullName: 'Anh Duc',
    birthDate: DateTime(2002, 02, 01),
    phoneNumber: '0123456789',
    email: 'hoanganhduc2k2@gmail.com',
    gender: 'Male',
  );

  Post post1 = Post(member: duc, content: 'Hello, world!');

  duc.addPost(post1);

  Comment comment1 = Comment(member: duc, content: 'This is my first comment.');

  post1.addComment(comment1);
}
