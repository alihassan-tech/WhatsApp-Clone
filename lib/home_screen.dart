import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('WhatsApp', style: TextStyle(color: Colors.white),),
        bottom: TabBar(
          labelColor: Colors.white,
            tabs:[
          Tab(
            child: Icon(Icons.camera_alt),
          ),
          Tab(
            child: Text('Chats'),
          ),
          Tab(
            child: Text('Status'),
          ),
          Tab(
            child: Text('Calls'),
          ),
        ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
          PopupMenuButton(
            color:  Colors.white,
            icon: Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                    child:  Text('New Group')
                ),
                PopupMenuItem(
                    value: 1,
                    child:  Text('Settings')
                ),
                PopupMenuItem(
                    value: 1,
                    child:  Text('Logout')
                ),
              ]
          ),
          SizedBox(width: 10),
        ],
      ),
      body: TabBarView(
          children: [
            Text('Camera'),
            ListView.builder(
              itemCount: 100,
                itemBuilder: (context , index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/1181345/pexels-photo-1181345.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                title: Text('Ali Hassan'),
                subtitle: Text('How are you doing?'),
                trailing: Text('06:30 PM'),
              );
            }
            ),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context , index) {
                  if (index == 0) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('New Updates'),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.green,
                                  width: 3,
                                )
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage('https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            ),
                          ),
                          title: Text('Ali Hassan'),
                          subtitle: Text('35 min ago'),
                        ),
                      ],
                    );
                  } else{
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 3,
                            )
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      title: Text('Ali Hassan'),
                      subtitle: Text('35 min ago'),
                    );
                  }
                }
            ),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context , index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/5240548/pexels-photo-5240548.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text('Ali Hassan'),
                    subtitle: Text(index /2 == 0 ? 'You missed audio call' : 'Call time was 12:23'),
                    trailing: Icon(index/2 == 0 ? Icons.phone : Icons.video_call),
                  );
                }
            ),
        ]
      ),

    ),
    );
  }
}
