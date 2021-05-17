import 'package:flutter/material.dart';
import 'package:list_lv6/database/moor_database.dart';
import 'package:uuid/uuid.dart';


class newItem extends StatefulWidget {
  const newItem({Key key}) : super(key: key);

  @override
  _newItemState createState() => _newItemState();
}

class _newItemState extends State<newItem> {

  TextEditingController nameController = new TextEditingController();
  TextEditingController descriptionController = new TextEditingController();

  var uuid = Uuid();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            setState(() {
              Navigator.of(context).pop();
            });
          },
        ),
        title: Text('Unos nove destinacije'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('Naziv:'),
                SizedBox(width: 5),
                Flexible(
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(

              children: [
                Text('Opis:'),
                SizedBox(width: 11),
                Flexible(
                  child: TextField(
                    maxLength: 100,
                    controller: descriptionController,
                    decoration: InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  if (nameController.text.isNotEmpty &&
                      descriptionController.text.isNotEmpty) {

                    AppDatabase().insertDestination(
                        Destination(
                            name:nameController.text,
                            description:descriptionController.text,
                            guid: uuid.v4() ));

                    final snackBar = SnackBar(content: Text('Destination saved'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    nameController.clear();
                    descriptionController.clear();
                  } else {
                    final snackBar =
                    SnackBar(content: Text('All fields must be entered'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    return;
                  }
                });
              },
              child: Text('Save')
            )
          ],
        ),
      ),
    );
  }
}
