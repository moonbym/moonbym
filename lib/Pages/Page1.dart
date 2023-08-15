import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Menu",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.access_alarm,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
      ),
      drawer: const Drawer(
        child: Column(),
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 2 - 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "All Folders",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        // Padding(
                        //     padding: EdgeInsets.only(
                        //         top: MediaQuery.sizeOf(context).height / 150)),
                        Row(children: [
                          const Text(
                            "This Month  ",
                            style: TextStyle(fontSize: 10),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.calendar_month,
                                size: 12,
                              ))
                        ])
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 2 - 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(6)),
                          onPressed: () {},
                          backgroundColor: Colors.white,
                          child: const Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.sizeOf(context).height / 50)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Flexible(
                    flex: 1,
                    child: SizedBox(),
                    fit: FlexFit.tight,
                  ),
                  const Flexible(flex: 1, child: Text("01")),
                  const Flexible(
                    flex: 1,
                    child: SizedBox(),
                    fit: FlexFit.tight,
                  ),
                  Flexible(
                      flex: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Personal Notes",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 30)),
                          const Text("12 notes"),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 90)),
                          const Divider()
                        ],
                      ))
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Flexible(
                    flex: 1,
                    child: SizedBox(),
                    fit: FlexFit.tight,
                  ),
                  const Flexible(flex: 1, child: Text("02")),
                  const Flexible(
                    flex: 1,
                    child: SizedBox(),
                    fit: FlexFit.tight,
                  ),
                  Flexible(
                      flex: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Educational Notes",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 30)),
                          const Text("5 notes"),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 90)),
                          const Divider()
                        ],
                      ))
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Flexible(
                    flex: 1,
                    child: SizedBox(),
                    fit: FlexFit.tight,
                  ),
                  const Flexible(flex: 1, child: Text("03")),
                  const Flexible(
                    flex: 1,
                    child: SizedBox(),
                    fit: FlexFit.tight,
                  ),
                  Flexible(
                      flex: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Daily ToDo",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 30)),
                          const Text("12 notes"),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 90)),
                          const Divider()
                        ],
                      ))
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Flexible(
                    flex: 1,
                    child: SizedBox(),
                    fit: FlexFit.tight,
                  ),
                  const Flexible(flex: 1, child: Text("04")),
                  const Flexible(
                    flex: 1,
                    child: SizedBox(),
                    fit: FlexFit.tight,
                  ),
                  Flexible(
                      flex: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Grocery",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 30)),
                          const Text("23 notes"),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 90)),
                          const Divider()
                        ],
                      ))
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Flexible(
                    flex: 1,
                    child: SizedBox(),
                    fit: FlexFit.tight,
                  ),
                  const Flexible(flex: 1, child: Text("05")),
                  const Flexible(
                    flex: 1,
                    child: SizedBox(),
                    fit: FlexFit.tight,
                  ),
                  Flexible(
                      flex: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Monday Work",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 30)),
                          const Text("34 notes"),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 90)),
                          const Divider()
                        ],
                      ))
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Flexible(
                    flex: 1,
                    child: SizedBox(),
                    fit: FlexFit.tight,
                  ),
                  const Flexible(flex: 1, child: Text("06")),
                  const Flexible(
                    flex: 1,
                    child: SizedBox(),
                    fit: FlexFit.tight,
                  ),
                  Flexible(
                      flex: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Practices",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 30)),
                          const Text("24 notes"),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 90)),
                          const Divider()
                        ],
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
