
import 'package:dep_management/equatable.dart';

final class PostResponse extends Equatable{
  final int id;
  final String title;
  final String body;

  const PostResponse({required this.id, required this.title, required this.body});

  @override
  List<Object?> get props => [id,title,body];
}