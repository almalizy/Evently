import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evently/data/DM/category_DM.dart';
import 'package:evently/utils/constant_manager.dart';
import 'package:flutter/material.dart';

class EventDM {
  final CategoryDM category;
  final String title;
  final String description;
  final DateTime date;
  final TimeOfDay? time;
  final int? lat;
  final int? lng;

  EventDM({
    required this.category,
    required this.title,
    required this.description,
    required this.date,
    this.time,
    this.lat,
    this.lng,
  });

  EventDM.fromJson(Map<String, dynamic> json)
    : this(
        title: json["title"],
        description: json["description"],
        date: json["date"].toDate(),
        category: ConstantManager.categories.firstWhere(
          (category) => category.id == json["categoryId"],
        ),
      );
  Map<String, dynamic> toJson() => {
    "title": title,
    "description": description,
    "categoryId": category.id,
    "date": Timestamp.fromDate(date),
  };
}
