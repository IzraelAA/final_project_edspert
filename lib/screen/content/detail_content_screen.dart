import 'package:final_project_edspert/core/navigation/edspert_navigation.dart';
import 'package:final_project_edspert/model/home/movie_model.dart';
import 'package:final_project_edspert/screen/content/buy_ticket_screen.dart';
import 'package:final_project_edspert/utils/widgets/edspert_button.dart';
import 'package:flutter/material.dart';

class DetailContentScreen extends StatelessWidget {
  static const routeName = '/detail-content-screen';
  const DetailContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    MovieModel movieModel = arguments['movieModel'] as MovieModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          movieModel.title,
          style: const TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.pop(context)),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(movieModel.image),
                Text(movieModel.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )),
                Text(movieModel.description,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: EdspertButton().primary(
                text: 'Beli Tiket',
                onTap: () {
                  EdspertNavigation().pushNamed(
                    BuyTicketScreen.routeName,
                    arguments: {'movieModel': movieModel},
                  );
                }),
          ),
        ],
      ),
    );
  }
}
