import 'package:flutter/material.dart';
import 'package:login_ap/app/componets/home/viewmodel/home_viewmodel.dart';
import 'package:login_ap/app/componets/home/widgets/drower.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    final homePageViewModel = context.watch<HomePageView>();

    return Scaffold(
        drawer: SideDrawer(),
        appBar: AppBar(),
        body: SafeArea(
            child: homePageViewModel.isLoading!
                ? const Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemCount: homePageViewModel.list.length,
                    itemBuilder: ((context, index) {
                      final listItem = homePageViewModel.list[index];
                      return SizedBox(
                        height: hight * 0.23,
                        width: width,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: width * 0.1,
                                  child: Column(
                                    children: [
                                      const Icon(Icons.arrow_drop_up),
                                      Text(listItem.totalVoted.toString()),
                                      const Icon(Icons.arrow_drop_down),
                                      const Text("Votes")
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 120,
                                  width: width * 0.2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              NetworkImage(listItem.poster))),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        listItem.title,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          const Text("Genre:"),
                                          Text(listItem.genre),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  width: width,
                                  height: hight * 0.03,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: const Text("Watch Trailer"))),
                            )
                          ],
                        ),
                      );
                    }),
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider();
                    },
                  )));
  }
}
