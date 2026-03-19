class Merchant {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? email;
  final String? username;
  final String? image;
  final int? reviewsAvgRating;
  final String? createdAt;

  Merchant({
    this.id,
    this.firstName,
    this.lastName,
    this.phone,
    this.email,
    this.username,
    this.image,
    this.reviewsAvgRating,
    this.createdAt,
  });

  factory Merchant.fromJson(Map<String, dynamic> json) {
    return Merchant(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      phone: json['phone'],
      email: json['email'],
      username: json['username'],
      image: json['image'],
      reviewsAvgRating: json['reviews_avg_rating'],
      createdAt: json['created_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "first_name": firstName,
      "last_name": lastName,
      "phone": phone,
      "email": email,
      "username": username,
      "image": image,
      "reviews_avg_rating": reviewsAvgRating,
      "created_at": createdAt,
    };
  }
}