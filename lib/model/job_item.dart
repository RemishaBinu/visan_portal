import 'package:flutter/foundation.dart';

class JobItem {
  String title;
  String company;
  bool isFixedPrice;
  bool isOnSite;
  bool isPaymentVerified;
  String elapsedString;
  num minPrice;
  num maxPrice;
  String priceUnit;
  DateTime postedOn;
  String location;
  bool isFavourite;

  JobItem({
    required this.title,
    required this.company,
    required this.elapsedString,
    required this.isFavourite,
    required this.isFixedPrice,
    required this.isOnSite,
    required this.isPaymentVerified,
    required this.location,
    required this.maxPrice,
    required this.minPrice,
    required this.postedOn,
    required this.priceUnit
  });

  factory JobItem.createDefault(){
    return JobItem(
      company: 'Tech mahi',
      elapsedString: 'Close in 4 days',
      isFavourite: false,
      isFixedPrice: true,
      isOnSite: true,
      isPaymentVerified: false,
      location: 'United States',
      maxPrice: 30000,
      minPrice: 25000,
      postedOn: DateTime.now().subtract(const Duration(days: 1)),
      priceUnit: 'month',
      title: 'Application Developer',
    );
  }
}