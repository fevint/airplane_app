// ignore_for_file: depend_on_referenced_packages, empty_catches

import 'package:airplane/model/transaction_model.dart';
import 'package:airplane/services/transaction_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  void createTransaction(TransactionModel transaction) async {
    try {
      emit(TransactionLoading());
      await TransactionService().createTransaction(transaction);
      emit(TransactionSuccess());
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }
}
