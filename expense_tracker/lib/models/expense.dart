import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.d().addPattern('/').add_M().addPattern('/').add_y();

const uuid = Uuid();

//creo un tipo personalizzato grazie ad enum, così verranno accettati
//solo le categorie indicate in questo tipo, cosi non si avranno errori
enum Category { food, travel, leisure, work } 

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({
  required this.title, 
  required this.amount, 
  required this.date,
  required this.category
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate{
    return formatter.format(date);
  }
}
