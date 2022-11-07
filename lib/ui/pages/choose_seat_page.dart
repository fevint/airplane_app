// ignore_for_file: sized_box_for_whitespace

import 'package:airplane/cubit/seat_cubit.dart';
import 'package:airplane/model/destination_model.dart';
import 'package:airplane/model/transaction_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/checkout_page.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/seat_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ChooseSeatPage extends StatelessWidget {
  final DestinationModel destination;
  const ChooseSeatPage(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(
          top: 50,
          bottom: 30,
        ),
        child: Text(
          'Select Your \nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 24,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Row(
        children: <Widget>[
          //NOTE AVAILABLE
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(
              right: 6,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_available.png'),
              ),
            ),
          ),
          Text(
            'Available',
            style: blackTextStyle,
          ),
          //NOTE SELECTED
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(
              right: 6,
              left: 10,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_selected.png'),
              ),
            ),
          ),
          Text(
            'Selected',
            style: blackTextStyle,
          ), //NOTE UNVAILABLE
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(
              right: 6,
              left: 10,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_unvailable.png'),
              ),
            ),
          ),
          Text(
            'Unavailable',
            style: blackTextStyle,
          ),
        ],
      );
    }

    Widget selectSeat() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 30,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 30,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: kWhiteColor,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //NOTE SEAT INDICATORS
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          'A',
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          'B',
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '',
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          'C',
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          'D',
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                //NOTE: SEAT 1
                Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItems(
                        id: 'A1',
                        isAvailable: false,
                      ),
                      const SeatItems(
                        id: 'B1',
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            '1',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItems(
                        id: 'C1',
                        isAvailable: false,
                      ),
                      const SeatItems(
                        id: 'D1',
                        isAvailable: false,
                      ),
                    ],
                  ),
                ),

                //NOTE: SEAT 2
                Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItems(
                        id: 'A2',
                      ),
                      const SeatItems(
                        id: 'B2',
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            '2',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItems(
                        id: 'C2',
                        isAvailable: false,
                      ),
                      const SeatItems(
                        id: 'D2',
                        isAvailable: false,
                      ),
                    ],
                  ),
                ),

                //NOTE: SEAT3
                Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItems(
                        id: 'A3',
                        isAvailable: false,
                      ),
                      const SeatItems(
                        id: 'B3',
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            '3',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItems(
                        id: 'C3',
                      ),
                      const SeatItems(
                        id: 'D3',
                        isAvailable: false,
                      ),
                    ],
                  ),
                ),

                //NOTE: SEAT4
                Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItems(
                        id: 'A4',
                      ),
                      const SeatItems(
                        id: 'B4',
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            '4',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItems(
                        id: 'C4',
                      ),
                      const SeatItems(
                        id: 'D4',
                      ),
                    ],
                  ),
                ),

                //NOTE: SEAT5
                Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItems(
                        id: 'A5',
                      ),
                      const SeatItems(
                        id: 'B5',
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            '5',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItems(
                        id: 'C5',
                      ),
                      const SeatItems(
                        id: 'D5',
                      ),
                    ],
                  ),
                ),

                //NOTE: Your Seat
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Seat',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        state.join(', '),
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                //NOTE: Total
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        NumberFormat.currency(
                                locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                            .format(state.length * destination.price),
                        style: purpleTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    Widget checkOutButton() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return CustomButton(
            margin: const EdgeInsets.only(
              top: 30,
              bottom: 46,
            ),
            title: 'Continue to Checkout',
            onPressed: () {
              int price = destination.price * state.length;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutPage(
                    TransactionModel(
                      destination: destination,
                      amountOfTraveler: state.length,
                      selectedSeats: state.join(', '),
                      insurance: true,
                      refundable: false,
                      vat: 0.45,
                      price: price,
                      grandTotal: price + (price * 0.45).toInt(),
                    ),
                  ),
                ),
              );
            },
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkOutButton(),
        ],
      ),
    );
  }
}
