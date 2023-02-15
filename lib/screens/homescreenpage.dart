import 'package:ecommerce_app_ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = [
    "All Items",
    "Dresses",
    "Hats",
    "Watches",
  ];

  List<String> icons = [
    "all_items_icon",
    "dress_icon",
    "hat_icon",
    "watch_icon",
  ];

  List<String> images = [
    'image-01',
    'image-02',
    'image-03',
    'image-04',
    'image-05',
  ];
  List<bool> isFavouriteCheck = [
    false,
    false,
    false,
    false,
    false,
  ];

  int current = 0;
  // bool isfavourite = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, Welcome 👋",
                          style: encodeSansRegular.copyWith(fontSize: 14),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Avinash Rola",
                          style: encodeSansBold.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://pbs.twimg.com/profile_images/1326844141779578880/byJHjR6N_400x400.jpg"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 45,
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          style: encodeSansRegular.copyWith(
                            fontSize: 14,
                          ),
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              color: darkGrey,
                            ),
                            hintText: "Search clothes. . . ",
                            hintStyle: encodeSansRegular.copyWith(fontSize: 14),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: lightGrey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: lightGrey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: lightGrey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 49,
                      width: 49,
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: SvgPicture.asset('assets/filter_icon.svg'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 36,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              left: index == 0 ? 0 : 15,
                            ),
                            height: 36,
                            decoration: BoxDecoration(
                              color:
                                  current == index ? darkBrown : Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: current == index
                                  ? null
                                  : Border.all(color: lightGrey, width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              child: Row(
                                children: [
                                  SvgPicture.asset(current == index
                                      ? 'assets/${icons[index]}_selected.svg'
                                      : 'assets/${icons[index]}_unselected.svg'),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    categories[index],
                                    style: current == index
                                        ? encodeSansMedium.copyWith(
                                            fontSize: 12,
                                            color: Colors.white,
                                          )
                                        : encodeSansMedium.copyWith(
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Expanded(
                child: MasonryGridView.count(
                  // shrinkWrap: true,
                  physics: ScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 25,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/images/${images[index]}.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 11,
                                top: 11,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isFavouriteCheck[index] =
                                          !isFavouriteCheck[index];
                                    });
                                  },
                                  child: SvgPicture.asset(
                                    isFavouriteCheck[index] == true
                                        ? 'assets/favorite_cloth_icon_selected.svg'
                                        : 'assets/favorite_cloth_icon_unselected.svg',
                                    height: 28,
                                    width: 28,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Modern light clothes",
                            style: encodeSansSemiBold.copyWith(fontSize: 14),
                          ),
                          Text(
                            "Dress modern",
                            style: encodeSansRegular.copyWith(
                              fontSize: 10,
                              color: lightGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$212.99",
                                style:
                                    encodeSansSemiBold.copyWith(fontSize: 14),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Color(0xffFFD33C),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "5.0",
                                      style: encodeSansRegular.copyWith(
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
