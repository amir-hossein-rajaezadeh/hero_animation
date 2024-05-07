import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'detail_page.dart';
import '../model/item_model.dart';
import '../shared/devider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Color> gradiantColorList = [
    Colors.blue.shade600,
    Colors.lightBlue.shade300
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildAppBarWidget(),
            _buildFirstListviewWidget(),
            _buildSecondListviewWidget(),
            const SizedBox(
              height: 15,
            ),
            const BuildDeviderWidget(),
            _buildThirdListViewWidget(),
            const SizedBox(
              height: 8,
            ),
            const BuildDeviderWidget(),
            _buildForthListViewWidget()
          ],
        ),
      ),
    );
  }

  Row _buildFirstListviewWidget() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 19, left: 16),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFFC3E6E4),
                Color(0xFFC5BEDF),
              ],
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Padding(
            padding: const EdgeInsets.all(1.5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                    margin: const EdgeInsets.only(top: 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(
                      Icons.filter_list_outlined,
                      size: 20,
                      color: Color(0xFFAAA4DE),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 18),
            height: 28,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                final item = filterList()[index];
                return Container(
                  margin: EdgeInsets.only(left: index == 0 ? 16 : 0),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFC3E6E4),
                        Color(0xFFC5BEDF),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            item,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: 7,
              ),
            ),
          ),
        )
      ],
    );
  }

  Container _buildAppBarWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 75, left: 20, right: 15),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Delivery to 1600 Amphthiter way",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Icon(Icons.keyboard_arrow_down_sharp)
        ],
      ),
    );
  }

  Column _buildForthListViewWidget() {
    return Column(
      children: [
        _buildTitleWidget("WFH favourite"),
        Container(
          margin: const EdgeInsets.only(top: 4),
          height: 240,
          child: ListView.builder(
            itemCount: getWHFFavouritesList().length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final item = getWHFFavouritesList()[index];
              final gradiantColorList = [
                Color.lerp(
                  Colors.green,
                  const Color.fromARGB(255, 54, 181, 244),
                  math.Random().nextDouble(),
                ) as Color,
                Color(
                  (math.Random().nextDouble() * 0xFFFFFF).toInt(),
                ).withOpacity(1.0)
              ];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 600),
                    reverseTransitionDuration:
                        const Duration(milliseconds: 500),
                    pageBuilder: (_, __, ___) => DetailPage(
                      heroTag: "Th$index",
                      itemModel: item,
                      colorList: gradiantColorList,
                    ),
                  ),
                ),
                child: Hero(
                  tag: "Th$index",
                  child: Container(
                    margin:
                        EdgeInsets.only(right: 10, left: index == 0 ? 20 : 0),
                    width: 180,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: gradiantColorList),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Container(
                        width: 148,
                        height: 148,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(item.image), fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Column _buildThirdListViewWidget() {
    return Column(
      children: [
        _buildTitleWidget("Popluer on Jetsnack"),
        Container(
          margin: const EdgeInsets.only(top: 4),
          child: SizedBox(
            height: 155,
            child: ListView.separated(
              itemCount: getPopulerJetsnacksList().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final item = getPopulerJetsnacksList()[index];

                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          DetailPage(
                        heroTag: "Se$index",
                        itemModel: item,
                        colorList: gradiantColorList,
                      ),
                    ),
                  ),
                  child: Hero(
                    tag: "Se$index",
                    child: Container(
                      margin: EdgeInsets.only(left: index == 0 ? 20 : 0),
                      child: Column(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: AssetImage(item.image),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: Container(
                              margin: const EdgeInsets.only(top: 8),
                              child: Text(
                                item.title,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column _buildSecondListviewWidget() {
    return Column(
      children: [
        _buildTitleWidget("Android's pick"),
        Container(
          margin: const EdgeInsets.only(top: 4),
          height: 215,
          child: ListView.separated(
            itemCount: getAndroidsPickList().length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final item = getAndroidsPickList()[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 200),
                      reverseTransitionDuration:
                          const Duration(milliseconds: 180),
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          DetailPage(
                        heroTag: "Fi$index",
                        itemModel: item,
                        colorList: gradiantColorList,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: "Fi$index",
                  child: Container(
                    margin: EdgeInsets.only(left: index == 0 ? 20 : 0),
                    height: 200,
                    width: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 90,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: gradiantColorList,
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 8, bottom: 7),
                                alignment: Alignment.bottomLeft,
                                child: Material(
                                  color: Colors.transparent,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item.title,
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const Text(
                                        "A tag line",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 45),
                          width: 118,
                          height: 118,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(item.image),
                                alignment: Alignment.center,
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              width: 10,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTitleWidget(String title) {
    return Container(
      margin: const EdgeInsets.only(right: 15, left: 20, top: 12, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Color(0xFF5B4ECC),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          const Icon(
            Icons.arrow_forward_rounded,
            size: 28,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
