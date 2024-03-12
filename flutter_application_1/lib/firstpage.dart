import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[300],
            title: Center(child: Text("TabBar sample")),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.contact_page),
              ),
              Tab(
                icon: Icon(Icons.favorite),
              )
            ]),
          ),
          body: TabBarView(children: [
            Center(
                child: Text(
              "Home",
              style: GoogleFonts.aclonica(fontSize: 30),
            )),
            Center(
                child:
                    Text("Contact", style: GoogleFonts.aclonica(fontSize: 30))),
            Center(
                child: Text("Favourite",
                    style: GoogleFonts.aclonica(fontSize: 30))),
          ])),
    );
  }
}
