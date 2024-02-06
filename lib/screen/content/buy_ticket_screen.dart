import 'package:final_project_edspert/model/home/movie_model.dart';
import 'package:flutter/material.dart';

class BuyTicketScreen extends StatefulWidget {
  static const routeName = '/buy-ticket-screen';
   BuyTicketScreen({super.key});

  @override
  State<BuyTicketScreen> createState() => _BuyTicketScreenState();
}

class _BuyTicketScreenState extends State<BuyTicketScreen> {
  List<String> time = ["10:00", "15:00", "18:00"];

  List<bool> isSelected = [true, false, false];

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
        ),
        body: Column(
          children: [
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                children: List.generate(
                    time.length,
                    (index) => timeContainer(
                          time[index],
                          isSelected[index],
                          index,
                        )),
              ),
            )
          ],
        ));
  }

  Widget timeContainer(String textContainer, bool isActived, int index) {
    return GestureDetector(
      onTap: () {
        isSelected = [false, false, false];
        isSelected[index] = true;
        setState(() {});
      },
      child: Container(
        decoration: BoxDecoration(
            color: isActived ? const Color(0xff867AD2) : Color(0xff514F64),
            borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 3,
        ),
        margin: const EdgeInsets.only(left: 10),
        child: Text(
          textContainer,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
