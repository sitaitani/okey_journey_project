import 'package:flutter/material.dart';

class FavoriteActor extends StatefulWidget {
  const FavoriteActor({super.key});

  @override
  State<FavoriteActor> createState() => _FavoriteActorState();
}

class _FavoriteActorState extends State<FavoriteActor> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Task',
      style: optionStyle,
    ),
    Text(
      'Index 2: Status',
      style: optionStyle,
    ),
    Text(
      'Index 2: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: Color.fromARGB(255, 16, 61, 97),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            //backgroundColor: Color.fromARGB(255, 16, 61, 97),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Task',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 25.0,
                      backgroundImage:
                          AssetImage('assets/images/Sita-nepali_Nov7.jpg'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Operator',
                          style: TextStyle(color: Colors.black54),
                        ),
                        const SizedBox(height: 10),
                        const Text('Sita Nepali',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Table List',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(2.0),
                      child: Table(
                          columnWidths: const {
                            0: FixedColumnWidth(
                                50), // this column has a fixed width of 50
                            1: FlexColumnWidth(
                                3), // take 1/3 of the remaining space
                            2: FlexColumnWidth(2),
                            3: FlexColumnWidth(
                                3), // // take 2/3 of the remaining space
                          },
                          defaultColumnWidth: const FixedColumnWidth(100.0),
                          border: const TableBorder(
                              top: BorderSide(
                                color: Color.fromARGB(255, 79, 79, 80),
                                width: 1,
                              ),
                              bottom: BorderSide(color: Colors.black, width: 1),
                              left: BorderSide(
                                  color: Color.fromARGB(255, 79, 79, 80),
                                  width: 1),
                              right: BorderSide(
                                  color: Color.fromARGB(255, 79, 79, 80),
                                  width: 1)),
                          //table border
                          children: [
                            const TableRow(children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('S.n.',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Name',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Address',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Working Status',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 161, 106, 170)),
                                children: [
                                  const TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        '1',
                                        style: TextStyle(fontSize: 10.0),
                                      ),
                                    ),
                                  ),
                                  const TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Center(
                                      child: Text('Sinamangal tube well',
                                          style: TextStyle(fontSize: 10.0)),
                                    ),
                                  ),
                                  const TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Center(
                                      child: Text(
                                        'sinamangal',
                                        style: TextStyle(fontSize: 10.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 25,
                                      child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              backgroundColor: Colors.red),
                                          onPressed: () {},
                                          child: const Text(
                                            'not operating',
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                color: Colors.white),
                                          )),
                                    ),
                                  )
                                ]),
                            TableRow(children: [
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '2',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text('Sinamangal tube well',
                                      style: TextStyle(fontSize: 10.0)),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text(
                                    'sinamangal',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          backgroundColor: Colors.green),
                                      onPressed: () {},
                                      child: const Text(
                                        'operating',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white),
                                      )),
                                ),
                              )
                            ]),
                            TableRow(children: [
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '3',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text('Sinamangal tube well',
                                      style: TextStyle(fontSize: 10.0)),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text(
                                    'sinamangal',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          backgroundColor: Colors.green),
                                      onPressed: () {},
                                      child: const Text(
                                        'operating',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white),
                                      )),
                                ),
                              )
                            ]),
                            TableRow(children: [
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '4',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text('Sinamangal tube well',
                                      style: TextStyle(fontSize: 10.0)),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text(
                                    'sinamangal',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          backgroundColor: Colors.green),
                                      onPressed: () {},
                                      child: const Text(
                                        'operating',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white),
                                      )),
                                ),
                              )
                            ]),
                          ]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(2.0),
                      child: Table(
                          columnWidths: const {
                            0: FixedColumnWidth(
                                50), // this column has a fixed width of 50
                            1: FlexColumnWidth(
                                3), // take 1/3 of the remaining space
                            2: FlexColumnWidth(2),
                            3: FlexColumnWidth(
                                3), // take 2/3 of the remaining space
                          },
                          defaultColumnWidth: const FixedColumnWidth(100.0),
                          border: const TableBorder(
                              top: BorderSide(
                                color: Color.fromARGB(255, 79, 79, 80),
                                width: 1,
                              ),
                              bottom: BorderSide(color: Colors.black, width: 1),
                              left: BorderSide(
                                  color: Color.fromARGB(255, 79, 79, 80),
                                  width: 1),
                              right: BorderSide(
                                  color: Color.fromARGB(255, 79, 79, 80),
                                  width: 1)),
                          //table border
                          children: [
                            TableRow(children: [
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '1',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text('Sinamangal tube well',
                                      style: TextStyle(fontSize: 10.0)),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text(
                                    'sinamangal',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          backgroundColor: Colors.red),
                                      onPressed: () {},
                                      child: const Text(
                                        'not operating',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white),
                                      )),
                                ),
                              )
                            ]),
                            TableRow(children: [
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '2',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text('Sinamangal tube well',
                                      style: TextStyle(fontSize: 10.0)),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text(
                                    'sinamangal',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          backgroundColor: Colors.green),
                                      onPressed: () {},
                                      child: const Text(
                                        'operating',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white),
                                      )),
                                ),
                              )
                            ]),
                            TableRow(children: [
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '3',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text('Sinamangal tube well',
                                      style: TextStyle(fontSize: 10.0)),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text(
                                    'sinamangal',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          backgroundColor: Colors.green),
                                      onPressed: () {},
                                      child: const Text(
                                        'operating',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white),
                                      )),
                                ),
                              )
                            ]),
                            TableRow(children: [
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '4',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text('Sinamangal tube well',
                                      style: TextStyle(fontSize: 10.0)),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text(
                                    'sinamangal',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          backgroundColor: Colors.green),
                                      onPressed: () {},
                                      child: const Text(
                                        'operating',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white),
                                      )),
                                ),
                              )
                            ]),
                          ]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(2.0),
                      child: Table(
                          columnWidths: const {
                            0: FixedColumnWidth(
                                50), // this column has a fixed width of 50
                            1: FlexColumnWidth(
                                3), // take 1/3 of the remaining space
                            2: FlexColumnWidth(2),
                            3: FlexColumnWidth(
                                3), // take 2/3 of the remaining space
                          },
                          defaultColumnWidth: const FixedColumnWidth(100.0),
                          border: const TableBorder(
                              top: BorderSide(
                                color: Color.fromARGB(255, 79, 79, 80),
                                width: 1,
                              ),
                              bottom: BorderSide(color: Colors.black, width: 1),
                              left: BorderSide(
                                  color: Color.fromARGB(255, 79, 79, 80),
                                  width: 1),
                              right: BorderSide(
                                  color: Color.fromARGB(255, 79, 79, 80),
                                  width: 1)),
                          //table border
                          children: [
                            TableRow(children: [
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '1',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text('Sinamangal tube well',
                                      style: TextStyle(fontSize: 10.0)),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text(
                                    'sinamangal',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          backgroundColor: Colors.red),
                                      onPressed: () {},
                                      child: const Text(
                                        'not operating',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white),
                                      )),
                                ),
                              )
                            ]),
                            TableRow(children: [
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '2',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text('Sinamangal tube well',
                                      style: TextStyle(fontSize: 10.0)),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text(
                                    'sinamangal',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          backgroundColor: Colors.green),
                                      onPressed: () {},
                                      child: const Text(
                                        'operating',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white),
                                      )),
                                ),
                              )
                            ]),
                            TableRow(children: [
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '3',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text('Sinamangal tube well',
                                      style: TextStyle(fontSize: 10.0)),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text(
                                    'sinamangal',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          backgroundColor: Colors.green),
                                      onPressed: () {},
                                      child: const Text(
                                        'operating',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white),
                                      )),
                                ),
                              )
                            ]),
                            TableRow(children: [
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '4',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text('Sinamangal tube well',
                                      style: TextStyle(fontSize: 10.0)),
                                ),
                              ),
                              const TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Center(
                                  child: Text(
                                    'sinamangal',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          backgroundColor: Colors.green),
                                      onPressed: () {},
                                      child: const Text(
                                        'operating',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white),
                                      )),
                                ),
                              )
                            ]),
                          ]),
                    ),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    /// Below container will go to bottom
                    Align(
                      alignment: Alignment.bottomRight,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              backgroundColor: Color.fromARGB(255, 16, 61, 97)),
                          onPressed: () {},
                          child: const Text(
                            'Explore Here',
                            style:
                                TextStyle(fontSize: 10.0, color: Colors.white),
                          )),
                    )
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
