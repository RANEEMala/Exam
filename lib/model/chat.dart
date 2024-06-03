// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Chat {
    String name;
    String image;
    String message;
    String date;
  Chat({
    required this.name,
    required this.image,
    required this.message,
    required this.date,
  });
 

  Chat copyWith({
    String? name,
    String? image,
    String? message,
    String? date,
  }) {
    return Chat(
      name: name ?? this.name,
      image: image ?? this.image,
      message: message ?? this.message,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'image': image,
      'message': message,
      'date': date,
    };
  }

  factory Chat.fromMap(Map<String, dynamic> map) {
    return Chat(
      name: map['name'] as String,
      image: map['image'] as String,
      message: map['message'] as String,
      date: map['date'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Chat.fromJson(String source) => Chat.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Chat(name: $name, image: $image, message: $message, date: $date)';
  }

  @override
  bool operator ==(covariant Chat other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.image == image &&
      other.message == message &&
      other.date == date;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      image.hashCode ^
      message.hashCode ^
      date.hashCode;
  }
 }
