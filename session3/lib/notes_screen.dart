import 'package:flutter/material.dart';

class NotesScreen extends StatelessWidget {
  NotesScreen({super.key});

  List<String> notes = [
    "Call mama ",
    "Visit uncle",
    "Finish Assignment",
    "Go to school",
    "Take an OOP class ",
    " Go back home",
    "Have dinner",
    "Go to supermarket",
    "visit grandma"
  ];
  List<Color> colors = const [
    Color(0xff00bcd5),
    Color(0xffff9700),
    Color(0xfff44234),
    Color(0xff2196f3),
    Color(0xff4cb050),
    Color(0xff9c28b1),
    Color(0xff673bb7),
    Color(0xff795549),
    Color(0xff9c27af),
    Color(0xff4cb050),
    Color(0xff9c28b1),
    Color(0xff673bb7),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Notes",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff9c28b1),
        actions: const [
          Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 15,
              );
            },
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return ListTile(
                minVerticalPadding: 30,
                titleTextStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
                title: Text(notes[index]),
                tileColor: colors[index],
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: colors[index])),
              );
            }),
      ),
    );
  }
}
