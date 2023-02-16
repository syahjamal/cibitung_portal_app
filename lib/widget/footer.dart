import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: height / 30,
          width: width,
          decoration: const BoxDecoration(),
          child: Center(
            child: Text(
              "LG Electronics Indonesia",
              style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "LGSmart"),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(),
          height: MediaQuery.of(context).size.height * 0.0200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.0200,
                width: MediaQuery.of(context).size.width / 1.25,
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.0200,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
