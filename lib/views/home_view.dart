import 'package:chat_application/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("Chat App",
              style: TextStyle(color: Theme.of(context).colorScheme.primary)),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: SearchBar(
                backgroundColor: WidgetStateProperty.all(
                    Theme.of(context).colorScheme.secondary),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.search,
                      color: Theme.of(context).colorScheme.primary),
                ),
                hintText: "S e a r c h",
                hintStyle: WidgetStateProperty.all(
                    TextStyle(color: Theme.of(context).colorScheme.primary)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                // child: ListView.builder(
                //   itemCount: 20,
                //   scrollDirection: Axis.vertical,
                //   itemBuilder: (context, index) {
                //     return ListTile(
                //       leading: CircleAvatar(
                //         backgroundColor: Theme.of(context).colorScheme.primary,
                //         child: Text("A"),
                //       ),
                //       title: Text("A b d u l l a h"),
                //       subtitle: Text("H i"),
                //     );
                //   },
                // ),`
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
          ],
        ));
  }
}
