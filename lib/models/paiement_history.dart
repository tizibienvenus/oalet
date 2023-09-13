import 'package:oalet/generated/assets.dart';

class HistoryPaiement {
  final String receiver;
  final String  image;
  final int sendedAmount;
  final String reasonPeament;

  HistoryPaiement({required this.image, required this.receiver, required this.sendedAmount, required this.reasonPeament});
}

// list of products
// for our demo
List<HistoryPaiement> historys = [
  HistoryPaiement(
    receiver: "Udemy",
    image: Assets.svgUser1,
    sendedAmount: 165,
    reasonPeament: "Subscription"
  ),
  HistoryPaiement(
    receiver: "Udemy",
    image: Assets.svgUser1,
    sendedAmount: 165,
    reasonPeament: "Subscription"
  ),
  HistoryPaiement(
    receiver: "Udemy",
    image: Assets.svgUser1,
    sendedAmount: 165,
    reasonPeament: "Subscription"
  ),
  HistoryPaiement(
    receiver: "Udemy",
    image: Assets.svgUser1,
    sendedAmount: 165,
    reasonPeament: "Subscription"
  ),
  HistoryPaiement(
    receiver: "Udemy",
    image: Assets.svgUser1,
    sendedAmount: 165,
    reasonPeament: "Subscription"
  ),
];
