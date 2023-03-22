import 'package:flutter/material.dart';

Widget chatTile(
    String userImg, String userName, String msg, String time, bool seen) {
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(userImg),
            backgroundColor: Colors.white,
            radius: 30.0,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(msg)
            ],
          )),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    time,
                    style: const TextStyle(fontSize: 12),
                  ),
                  if (seen)
                    const Icon(
                      Icons.done_all,
                      color: Colors.blue,
                    ),
                  if (!seen)
                    const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
  
                ],
              )
            ],
          )
        ],
      ));
}
