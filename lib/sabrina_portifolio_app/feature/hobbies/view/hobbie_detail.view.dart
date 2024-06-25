import 'package:flutter/material.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/core/widgets/sabrina_app_bar.widget.dart';

class HobbieDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
      appBar: SabrinaAppBarWidget(
        icon: Icon(Icons.arrow_back),
        title: "Hobbies",
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return HobbyPostCard(index: index);
        },
      ),
    );
  }
}

class HobbyPostCard extends StatelessWidget {
  final int index;

  const HobbyPostCard({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage('assets/profile_picture.jpg'),
              ),
              SizedBox(width: 8.0),
              Text(
                'Hobby Username $index',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Image.network(
            'https://via.placeholder.com/400',
            width: double.infinity,
            height: 300.0,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.mode_comment_outlined),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.send_outlined),
                color: Colors.white,
                onPressed: () {},
              ),
              Expanded(child: Container()),
              IconButton(
                icon: Icon(Icons.bookmark_border),
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            'Liked by user1, user2 and 20 others',
            style: TextStyle(
              color: Color.fromRGBO(36, 167, 174, 1.0),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            'Description of hobby post $index',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'View all comments',
            style: TextStyle(
              color: Color.fromRGBO(36, 167, 174, 1.0),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '2 hours ago',
            style: TextStyle(
              color: Color.fromRGBO(36, 167, 174, 1.0),
            ),
          ),
        ],
      ),
    );
  }
}
