import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                top: 30,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Howdy,\n${state.user.name}',
                          style: blackTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 24,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text('Where to fly today?',
                            style: greyTextStyle.copyWith(
                              fontWeight: light,
                              fontSize: 16,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/image_profile.png'),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget popularDestinatios() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationCard(
                imageUrl: 'assets/image_destination1.png',
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                rating: 4.8,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination2.png',
                name: 'Hill Heyo',
                city: 'Monaco',
                rating: 4.8,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination3.png',
                name: 'Menarra',
                city: 'Japan',
                rating: 5.0,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination4.png',
                name: 'Payung Teduh',
                city: 'Singapure',
                rating: 4.8,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination5.png',
                name: 'White House',
                city: 'Spain',
                rating: 4.7,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
              ),
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination6.png',
              name: 'Danau Beratan',
              city: 'Singajaya',
              rating: 4.5,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination7.png',
              name: 'Sydney Opera',
              city: 'Australia',
              rating: 4.7,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination8.png',
              name: 'Roma',
              city: 'Italy',
              rating: 4.8,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination9.png',
              name: 'Payung Teduh',
              city: 'Singapore',
              rating: 4.5,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination10.png',
              name: 'Hill Hey',
              city: 'Monaco',
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinatios(),
        newDestinations(),
      ],
    );
  }
}
