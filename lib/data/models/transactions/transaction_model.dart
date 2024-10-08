import 'package:hive/hive.dart';
import 'package:flutter/material.dart';

part 'transaction_model.g.dart'; // This will be generated by Hive

@HiveType(typeId: 1)
class TransactionModel extends HiveObject {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String iconName; // Use int to store icon data

  @HiveField(2)
  final String cashSpent;

  @HiveField(3)
  final String date;

  @HiveField(4)
  final int colorValue; // Use int to store color value

  TransactionModel({
    required this.title,
    required this.iconName,
    required this.cashSpent,
    required this.date,
    required this.colorValue,
  });

  // Helper methods to convert icon and color to and from int

  Color get color => Color(colorValue);
}
