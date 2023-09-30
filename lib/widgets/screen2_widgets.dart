import 'package:button_task/widgets/button.dart';
import 'package:flutter/material.dart';

class ProposalReacted extends StatelessWidget {
  final bool proposalAccepted;
  const ProposalReacted({
    super.key,
    required this.proposalAccepted,
  });

  @override
  Widget build(BuildContext context) {
    return proposalAccepted
        ? const ProposalAccepted()
        : const ProposalDeclined();
  }
}

class ProposalAccepted extends StatelessWidget {
  const ProposalAccepted({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyButton(
          text: 'Accepted',
          color: Colors.white,
          bgColor: Colors.blue,
          width: 200,
        ),
        MyButton(
          text: '👍🏻',
          color: Colors.white,
          bgColor: Colors.blue,
          width: 50,
        ),
      ],
    );
  }
}

class ProposalDeclined extends StatelessWidget {
  const ProposalDeclined({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyButton(
          text: 'Declined',
          color: Colors.white,
          bgColor: Colors.red,
          width: 200,
        ),
        MyButton(
          text: '👎🏻',
          color: Colors.white,
          bgColor: Colors.red,
          width: 50,
        )
      ],
    );
  }
}
