import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
              decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(20))),
          Positioned(
              left: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child: const CircleAvatar(backgroundColor: Colors.white)),
          Positioned(
              right: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child: const CircleAvatar(backgroundColor: Colors.white)),
          const Positioned(
            top: -50,
            left: 0.0,
            right: 0.0,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xffD9D9D9),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green,
                child: Icon(Icons.check, color: Colors.white,size: 50),
              ),
            ),
          )
        ],
      ),
    );
  }
}
