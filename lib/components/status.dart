import 'package:flutter/material.dart';

Widget status(String imgUrl, String userName) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFF177767),
          backgroundImage: NetworkImage(imgUrl),
          radius: 30.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          userName,
          style: const TextStyle(color: Colors.white),
        )
      ],
    ),
  );
}
