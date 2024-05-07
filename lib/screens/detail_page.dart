import 'package:flutter/material.dart';
import 'package:hero_animation/model/item_model.dart';
import '../shared/devider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {required this.heroTag,
      required this.itemModel,
      required this.colorList,
      super.key});
  final String heroTag;
  final ItemModel itemModel;
  final List<Color> colorList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      height: 250,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: colorList,
                            begin: Alignment.topLeft,
                            end: Alignment.topRight),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                      ),
                    ),
                    Hero(
                      tag: heroTag,
                      child: Material(
                        color: Colors.transparent,
                        child: Center(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 100,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 260,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image:
                                                  AssetImage(itemModel.image),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topLeft,
                                        margin: const EdgeInsets.only(
                                            left: 26, top: 10),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              itemModel.title,
                                              style: const TextStyle(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            if (itemModel.hasTagLine)
                                              const Text(
                                                "a tag line",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 22),
                                              )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(
                        context,
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(top: 50, left: 20),
                        alignment: Alignment.topLeft,
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black.withOpacity(0.25),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, top: 4),
                          alignment: Alignment.topLeft,
                          child: Text(
                            " \$${itemModel.price}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              color: Color(0xFF5C52B4),
                            ),
                          ),
                        ),
                        const BuildDeviderWidget(),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 16, left: 20, right: 20),
                          alignment: Alignment.topLeft,
                          child: Text(
                            itemModel.desc,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              height: 2,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
