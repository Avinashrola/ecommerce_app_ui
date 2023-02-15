import 'package:ecommerce_app_ui/screens/homescreenpage.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app_ui/styles.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:readmore/readmore.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/shopping_cart_icon.svg',
                ),
                Text(
                  " Add To cart | \$200.54  ",
                  style: encodeSansBold.copyWith(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    "\$900.54",
                    style: encodeSansRegular.copyWith(
                      fontSize: 10,
                      color: Colors.white,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: lightGrey,
                      decorationThickness: 7,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image.asset(
                          'assets/images/image-01.png',
                          height: MediaQuery.of(context).size.height / 2,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0, 7),
                                      blurRadius: 12,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                      'assets/arrow_back_icon.svg'),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0, 7),
                                      blurRadius: 12,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                      'assets/favorite_black_icon.svg'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Modern light clothes",
                        overflow: TextOverflow.clip,
                        style: encodeSansSemiBold.copyWith(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              minusCounter();
                            });
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              border: Border.all(color: lightGrey),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.remove,
                              color: lightGrey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          child: Text(
                            _counter.toString(),
                            style: encodeSansBold.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              plusCounter();
                            });
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              border: Border.all(color: lightGrey),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: black,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: 3,
                      itemSize: 19,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      unratedColor: lightGrey.withOpacity(0.5),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "5.0",
                      style: encodeSansRegular.copyWith(
                        fontSize: 13,
                        color: Color(0xff878787),
                      ),
                    ),
                    Text(
                      " (7.932 reviews)",
                      style: encodeSansRegular.copyWith(
                        fontSize: 12,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ReadMoreText(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  delimiter: ' ',
                  trimCollapsedText: " Read More...",
                  trimExpandedText: " Show Less",
                  style:
                      encodeSansRegular.copyWith(fontSize: 12, color: darkGrey),
                  moreStyle: encodeSansSemiBold.copyWith(fontSize: 15),
                  lessStyle: encodeSansSemiBold.copyWith(fontSize: 15),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Divider(),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Choose Size",
                          style: encodeSansBold.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: lightGrey.withOpacity(0.5),
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  "S",
                                  style: encodeSansRegular.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: lightGrey.withOpacity(0.5),
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  "M",
                                  style: encodeSansRegular.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(
                                  color: lightGrey.withOpacity(0.5),
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  "L",
                                  style: encodeSansRegular.copyWith(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: lightGrey.withOpacity(0.5),
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  "XL",
                                  style: encodeSansRegular.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Color",
                          style: encodeSansBold.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: lightGrey,
                                border: Border.all(
                                  color: lightGrey.withOpacity(0.5),
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: darkGrey,
                                border: Border.all(
                                  color: lightGrey.withOpacity(0.5),
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(
                                  color: lightGrey.withOpacity(0.5),
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  plusCounter() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  minusCounter() {
    setState(() {
      _counter = _counter - 1;
    });
  }
}
