import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:oalet/generated/assets.dart';

class HistoryPaiement {
  final String receiver;
  final String  image;
  final int sendedAmount;
  final String reasonPeament;
  final String date;
  final String reasonIncome;
  final Icon icon;
  final Color color;


  HistoryPaiement( {required this.image, required this.receiver, required this.sendedAmount, required this.reasonPeament, required this.date, required this.reasonIncome, required this.icon, required this.color,});
}

// list of products
// for our demo
List<HistoryPaiement> historys = [
  HistoryPaiement(
    receiver: "Udemy",
    image: Assets.svgUser1,
    sendedAmount: 1526,
    reasonPeament: "Subscription",
    date: 'June, 28 2020',
    reasonIncome: "Salary",
    icon: const Icon(Icons.work, color: Color(0xFF111827)),
    color: const Color(0xFFA7FED9)
  ),
  HistoryPaiement(
    receiver: "Udemy",
    image: Assets.svgUser1,
    sendedAmount: 165,
    reasonPeament: "Subscription",
    date: 'October, 28 2020',
    reasonIncome: "Paypal",
    icon: const Icon(Icons.paypal, color: Color(0xFF111827)),
    color: const Color(0xFFEBB2FF)
  ),
  HistoryPaiement(
    receiver: "trip",
    image: Assets.svgUser1,
    sendedAmount: 256,
    reasonPeament: "Subscription",
    date: 'May, 2020',
    reasonIncome: "Gift",
    icon: const Icon(Icons.card_giftcard, color: Color(0xFF111827)),
    color: const Color(0xFFFFEEB2)
  ),
  HistoryPaiement(
    receiver: "Udemy",
    image: Assets.svgUser1,
    sendedAmount: 1526,
    reasonPeament: "Subscription",
    date: 'June, 28 2020',
    reasonIncome: "Salary",
    icon: const Icon(Icons.work, color: Color(0xFF111827)),
    color: const Color(0xFFA7FED9)
  ),
  HistoryPaiement(
    receiver: "Udemy",
    image: Assets.svgUser1,
    sendedAmount: 165,
    reasonPeament: "Subscription",
    date: 'October, 28 2020',
    reasonIncome: "Paypal",
    icon: const Icon(Icons.paypal, color: Color(0xFF111827)),
    color: const Color(0xFFEBB2FF)
  ),
  HistoryPaiement(
    receiver: "trip",
    image: Assets.svgUser1,
    sendedAmount: 256,
    reasonPeament: "Subscription",
    date: 'May, 2020',
    reasonIncome: "Gift",
    icon: const Icon(Icons.card_giftcard, color: Color(0xFF111827)),
    color: const Color(0xFFFFEEB2)
  ),

];
