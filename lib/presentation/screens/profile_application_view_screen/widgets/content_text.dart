import 'package:flutter/material.dart';

class ContentText extends StatelessWidget {
  const ContentText({
    super.key,
    required this.content,
  });
  final String content;
  @override
  Widget build(BuildContext context) {
    return Text(
      textDirection: TextDirection.rtl,
      overflow: TextOverflow.ellipsis,
      maxLines: 7,
      content,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
