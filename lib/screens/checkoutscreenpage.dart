import 'package:ecommerce_app_ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: lightGrey.withOpacity(0.5),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: SvgPicture.asset('assets/arrow_back_icon.svg'),
                        )),
                    Text(
                      "Checkout",
                      style: encodeSansSemiBold.copyWith(fontSize: 16),
                    ),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: lightGrey.withOpacity(0.5),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Icon(Icons.sort),
                        )),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                ProductList('image-01'),
                ProductList('image-02'),
                ProductList('image-03'),
                ProductList('image-04'),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      "Shipping Information",
                      style: encodeSansSemiBold.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 62,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          color: lightGrey.withOpacity(0.2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.add_card_rounded,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                '**** **** **** 2143',
                                style: encodeSansSemiBold.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.keyboard_arrow_down,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total (9 items)',
                      style: encodeSansRegular.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '\$131.97',
                      style: encodeSansSemiBold.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping Fee',
                      style: encodeSansRegular.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '\$0',
                      style: encodeSansSemiBold.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Divider(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub Total',
                      style: encodeSansRegular.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '\$131.97',
                      style: encodeSansSemiBold.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: Text(
                            "Pay",
                            style: encodeSansBold.copyWith(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ProductList(String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Image.asset(
                    "assets/images/${image}.png",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Modern light clothes",
                style: encodeSansSemiBold.copyWith(fontSize: 16),
              ),
              Text(
                "Dress modern",
                style:
                    encodeSansRegular.copyWith(fontSize: 13, color: lightGrey),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "\$212.99",
                style: encodeSansSemiBold.copyWith(fontSize: 16),
              ),
            ],
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.more_horiz),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 28,
                width: 85,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 18,
                      ),
                      Text(
                        "0",
                        style: encodeSansSemiBold.copyWith(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
