import 'package:flutter/material.dart';
import 'package:login_ap/app/componets/home/viewmodel/home_viewmodel.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    final homePageViewModel = context.read<HomePageView>();

    return Scaffold(
        body: SafeArea(
            child: ListView.separated(
      itemCount: homePageViewModel.posts.length,
      itemBuilder: ((context, index) {
        final urlImage = homePageViewModel.posts[index];
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
                      children: const [
                        Icon(Icons.arrow_drop_up),
                        Text("1"),
                        Icon(Icons.arrow_drop_down),
                        Text("Votes")
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://media.istockphoto.com/photos/move-cardboard-boxes-and-cleaning-things-for-moving-into-a-new-home-picture-id658680974"))),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'fdsa',
                          // urlImage.category.characters.toString(),
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: const [
                            Text("Genre:"),
                            Text("Action , ADvature, "),
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
                        onPressed: () {}, child: const Text("Watch Trailer"))),
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
