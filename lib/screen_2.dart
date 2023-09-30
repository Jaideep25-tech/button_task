import 'package:button_task/widgets/button.dart';
import 'package:button_task/widgets/screen2_widgets.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool proposalAccepted = false;
  bool proposalReacted = false;

  proposalDeclined() {
    setState(() {
      proposalReacted = true;
      proposalAccepted = false;
    });
  }

  proposalAccecpted() {
    setState(() {
      proposalReacted = true;
      proposalAccepted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: !proposalReacted
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => proposalDeclined(),
                        child: const MyButton(
                          text: 'Decline',
                          color: Colors.white,
                          bgColor: Colors.red,
                          width: 200,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => proposalAccecpted(),
                        child: const MyButton(
                          text: 'Accept',
                          color: Colors.white,
                          bgColor: Colors.blue,
                          width: 200,
                        ),
                      )
                    ],
                  )
                : ProposalReacted(
                    proposalAccepted: proposalAccepted,
                  )));
  }
}
