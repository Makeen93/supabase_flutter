import 'package:flutter/material.dart';

class CommentsList extends StatelessWidget {
  const CommentsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemBuilder: (context, index) {
        return const UserComment();
      },
      itemCount: 10,
    );
  }
}

class UserComment extends StatelessWidget {
  const UserComment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Text(
              'User Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'User Name',
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'User Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'User Name',
            ),
          ],
        ),
      ],
    );
  }
}
