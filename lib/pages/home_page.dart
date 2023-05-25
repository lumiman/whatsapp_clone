import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/data_dummy.dart';
import 'package:whatsapp_clone/pages/call_page.dart';
import 'package:whatsapp_clone/pages/status_page.dart';

import 'chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabConstroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabConstroller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          controller: _tabConstroller,
          indicatorColor: Colors.white,
          indicatorWeight: 3.5,
          tabs: [
            const Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Row(
                children: [
                  const Text(
                    "CHAT",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.only(left: 5, top: 2),
                    height: 17,
                    width: 17,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      chatMessageList.length.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xff065E52),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Tab(
              child: Text(
                "STATUS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Tab(
              child: Text(
                "CALLS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
      body: TabBarView(
        controller: _tabConstroller,
        children: const [
          Center(child: Text("Camera")),
          ChatPage(),
          StatusPage(),
          CallPage(),
        ],
      ),
    );
  }
}
