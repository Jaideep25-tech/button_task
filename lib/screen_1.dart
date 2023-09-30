import 'package:button_task/widgets/button.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool proposalSent = false;

  sendProposal() {
    setState(() {
      proposalSent = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
          onTap: () => sendProposal(),
          child: proposalSent
              ? const MyButton(
                  color: Colors.black,
                  text: 'Proposal has been Sent',
                  bgColor: Colors.green,
                  width: 300,
                )
              : const MyButton(
                  color: Colors.white,
                  text: 'Send Proposal',
                  bgColor: Colors.blue,
                  width: 300,
                )),
    ));
  }
}
