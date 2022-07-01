import 'package:assignment3_uidesign/models/bottom_navigation_item_data_holder.dart';
import 'package:assignment3_uidesign/models/food.dart';
import 'package:assignment3_uidesign/models/food_category.dart';
import 'package:assignment3_uidesign/res/colors.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FoodAppHomePage extends StatefulWidget {
  const FoodAppHomePage({Key? key}) : super(key: key);

  @override
  State<FoodAppHomePage> createState() => _FoodAppHomePageState();
}

class _FoodAppHomePageState extends State<FoodAppHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<BottomNavigationItemDataHolder> navList =
      BottomNavigationItemDataHolder.getBottomNavDatList();
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          primaryColor: Colors.white,
          primarySwatch: MaterialColor(Colors.white.value, foodAppCustomColor),
          textTheme: const TextTheme(
            headline1: TextStyle(
                color: Colors.black, fontSize: 10, fontWeight: FontWeight.w500),
          )),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: const Text(
            "What would you like to eat?",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          actions: [
            Stack(
              children: [
                IconButton(
                  onPressed: () {
                    print("Notification Button Pressed");
                  },
                  icon: const Icon(
                    Icons.notifications_outlined,
                    size: 35,
                    color: Colors.black54,
                  ),
                ),
                const Positioned(
                  top: 10,
                  right: 10,
                  child: Text(
                    "25",
                    style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.red,
                        fontSize: 10),
                  ),
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.black38,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 20,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.lightbulb_circle, size: 20),
                label: 'Near By',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart, size: 20),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                  size: 20,
                ),
                label: 'Account',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped),
        body: SingleChildScrollView(
          primary: true,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSearchBox(),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: FoodCategory.foodCategories().length,
                      itemBuilder: (ctx, index) {
                        FoodCategory category =
                            FoodCategory.foodCategories()[index];

                        return Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: _buildCategoryItem(category),
                        );
                      }),
                ),
                const Text(
                  "Popular Food",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 250,
                  child: _buildPopularFoodList(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Best Food",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                _buildBestFoodList()
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListView _buildPopularFoodList() {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (ctx, int index) {
          return const SizedBox(
            width: 20,
          );
        },
        itemCount: Food.getPopularFoods().length,
        itemBuilder: (context, index) {
          Food _food = Food.getPopularFoods()[index];
          return _buildPopularFoodCard(_food);
        });
  }

  ListView _buildBestFoodList() {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        primary: false,
        separatorBuilder: (ctx, index) {
          return const SizedBox(
            height: 15,
          );
        },
        itemCount: Food.getBestFoods().length,
        itemBuilder: (ctx, index) {
          Food _food = Food.getBestFoods()[index];
          return _buildBestFoodCard(_food);
        });
  }

  Container _buildSearchBox() {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(color: Colors.black12, width: 3)),
      child: const TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            size: 40,
            color: Colors.black38,
          ),
          suffixIcon: Icon(
            Icons.filter_list,
            color: Colors.black54,
            size: 40,
          ),
          border: InputBorder.none,
          hintText: "Find a food or Restaurant",
          hintStyle: TextStyle(
              color: Colors.black12, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Material _buildPopularFoodCard(Food _food) {
    return Material(
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  _food.imageLocation,
                  width: 190,
                  height: 150,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 180,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _food.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black45,
                        ),
                      ),
                      _buildNavigationWidget()
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _food.rating.toString(),
                      style: const TextStyle(color: Colors.green),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    for (int rate = 1; rate <= 5; rate++)
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.green
                            .withOpacity(rate <= _food.rating.ceil() ? 1 : 0.5),
                      ),
                    Text(
                      " (${_food.reviews})",
                      style:
                          const TextStyle(fontSize: 12, color: Colors.black38),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "${_food.price}",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
            Positioned(
              right: -16,
              top: -16,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(25))),
                child: const Material(
                  elevation: 10,
                  color: Colors.transparent,
                  child: Icon(
                    EvaIcons.heart,
                    color: Colors.red,
                    size: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildBestFoodCard(Food _food) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            _food.imageLocation,
            fit: BoxFit.fill,
            height: 200,
            width: double.infinity,
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _food.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black45,
                ),
              ),
              _buildNavigationWidget(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    _food.rating.toString(),
                    style: const TextStyle(color: Colors.green, fontSize: 16),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  for (int rate = 1; rate <= 5; rate++)
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.green
                          .withOpacity(rate <= _food.rating.ceil() ? 1 : 0.5),
                    ),
                  Text(
                    " (${_food.reviews})",
                    style: const TextStyle(fontSize: 12, color: Colors.black38),
                  ),
                ],
              ),
              Text(
                "${_food.price}",
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container _buildNavigationWidget() {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Transform.rotate(
        angle: 1,
        child: const Icon(
          Icons.navigation_rounded,
          color: Colors.red,
          size: 15,
        ),
      ),
    );
  }

  Column _buildCategoryItem(FoodCategory category) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          elevation: 8,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              category.iconData,
              size: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          category.name,
          style: TextStyle(color: Colors.black45, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
