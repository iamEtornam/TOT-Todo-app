import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 50,
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.red,
            backgroundImage: AssetImage('assets/profile_img.jpg'),
          ),
        ),
        title: const Text('My Tasks'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.sort)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: ListView.separated(
        
        padding: const EdgeInsets.all(16),
          itemBuilder: (context, index) {
            return const TodoTileWidget();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: 10),
    );
  }
}

class TodoTileWidget extends StatelessWidget {
  const TodoTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ListTile(
          leading: const Icon(
            Icons.check_circle_outline,
            size: 30,
          ),
          title: Text(
            'Plan trip to Finland',
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20),
          ),
          subtitle: const Text('The family\'s trip to Finland next summer'),
          trailing: TextButton.icon(
              onPressed: null,
              icon: const Icon(Icons.notifications),
              label: const Text('Yesterday')),
        ),
      ),
    );
  }
}
