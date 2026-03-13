class FavoriteModel {
  final String id;
  final String productId;
  final String userId;

  bool isSelected;

  FavoriteModel({
    required this.id,
    required this.productId,
    required this.userId,
    this.isSelected = false,
  });

  factory FavoriteModel.fromJson(Map<String, dynamic> json) {
    return FavoriteModel(
      id: json['id'].toString(),
      productId: json['productId'].toString(),
      userId: json['userId'].toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'productId': productId,
      'userId': userId,
    };
  }
}