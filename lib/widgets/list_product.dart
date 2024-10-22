import 'package:flutter/material.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({
    super.key,
    required List namesData,
  }) : _namesData = namesData;

  final List _namesData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: _namesData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              _namesData[index],
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            thickness: 0.5,
          );
        },
      ),
    );
  }
}