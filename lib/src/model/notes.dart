// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:isar/isar.dart';


part 'notes.g.dart';

@collection
class Notes {
  Id id = Isar.autoIncrement;
  final String title;
  final String description;
  final DateTime lastModified;
  Notes({
    required this.id,
    required this.title,
    required this.description,
    required this.lastModified,
  });

  Notes copyWith({
    Id? id,
    String? title,
    String? description,
    DateTime? lastModified,
  }) {
    return Notes(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      lastModified: lastModified ?? this.lastModified,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'lastModified': lastModified.millisecondsSinceEpoch,
    };
  }

  factory Notes.fromMap(Map<String, dynamic> map) {
    return Notes(
      id: map['id'],
      title: map['title'] as String,
      description: map['description'] as String,
      lastModified: DateTime.fromMillisecondsSinceEpoch(map['lastModified'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory Notes.fromJson(String source) => Notes.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Notes(id: $id, title: $title, description: $description, lastModified: $lastModified)';
  }

  @override
  bool operator ==(covariant Notes other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.title == title &&
      other.description == description &&
      other.lastModified == lastModified;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      lastModified.hashCode;
  }
}
