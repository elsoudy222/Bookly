import 'package:bookly/features/home/presentation/view/book_details/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}
