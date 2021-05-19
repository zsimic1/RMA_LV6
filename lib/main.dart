
import 'package:flutter/material.dart';
import 'package:list_lv6/screens/addNewItem.dart';
import 'package:list_lv6/database/moor_database.dart';

void main() => runApp(MaterialApp(home: Lists()));

class Lists extends StatefulWidget {
  @override
  _ListsState createState() => new _ListsState();
}

class _ListsState extends State<Lists> {
  int count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moje destinacije'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () async {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => newItem()));
              setState(() {});
            },
          )
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: StreamBuilder(
          stream: AppDatabase().watchAllDestinations(),
          builder: (context, AsyncSnapshot<List<Destination>> snapshot) {
            if(snapshot.hasData){

              count = snapshot.data.length;
            }
            else{
              count = 0;
            }
            return ListView.builder(
              itemCount: count,
              itemBuilder: (_, index) {
                return Card(
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    color: Colors.blue[400],
                    height: 70,
                    padding: const EdgeInsets.all(5),
                    child: Row(
                        children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(snapshot.data[index].name,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      snapshot.data[index].description,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                );
              },
            );
          }),
    );
  }
}
