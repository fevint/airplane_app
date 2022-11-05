// ignore_for_file: use_rethrow_when_possible

import 'package:airplane/model/transaction_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionService {
  CollectionReference transactionReference =
      FirebaseFirestore.instance.collection('transactions');
  Future<void> createTransaction(TransactionModel transaction) async {
    try {
      transactionReference.add({
        'destination': transaction.destination.toJson(),
        'amountOfTraveler': transaction.amountOfTraveler,
        'selectedSeat': transaction.selectedSeats,
        'insurance': transaction.insurance,
        'refundable': transaction.refundable,
        'vat': transaction.vat,
        'price': transaction.price,
        'grandeTotal': transaction.grandTotal,
      });
    } catch (e) {
      throw e;
    }
  }
}
