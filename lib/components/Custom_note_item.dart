import 'package:flutter/material.dart';
import 'package:note_app/views/Edit_Note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Color(0xffffccb0),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'test',
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
              subtitle: Text(
                'this is the frist note in app',
                style:
                    TextStyle(color: Colors.black.withAlpha(90), fontSize: 22),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete_rounded, color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 8),
              child: Text(
                "April, 2022",
                style: TextStyle(
                    color: Colors.black54.withAlpha(90), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
