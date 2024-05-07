class ItemModel {
  final String title;
  final String image;
  final String desc;
  final double price;
  final bool hasTagLine;
  ItemModel(this.title, this.image, this.desc, this.price, this.hasTagLine);
}

List<ItemModel> getAndroidsPickList() {
  List<ItemModel> androidsPickList = [
    ItemModel(
        "Cupcake",
        "assets/images/cupcake.jpeg",
        "Cupcakes are about having your own little cake that you do not have to share. These Chocolate Cupcakes are my favorite type of cupcake. The combination of a rich and moist chocolate butter cake topped with a rich and creamy chocolate butter frosting is irresistible. Cupcakes are about having your own little cake that you do not have to share. These Chocolate Cupcakes are my favorite type of cupcake. The combination of a rich and moist chocolate butter cake Cupcakes are about having your own little cake that you do not have to share.",
        5.5,
        true),
    ItemModel(
        "Donut",
        "assets/images/donut.avif",
        "a small cake of sweetened or, sometimes, unsweetened dough fried in deep fat, typically shaped like a ring or, when prepared with a filling, a ball. anything shaped like a thick ring; an annular object; toroid a small cake of sweetened or, sometimes, unsweetened dough fried in deep fat, typically shaped like a ring or, when prepared with a filling, a ball. anything shaped like a thick ring; an annular object; toroida small cake of sweetened or, sometimes, unsweetened dough fried in deep fat, typically shaped like a ring or, when prepared with a filling, a ball. anything shaped like a thick ring; an annular object; toroid a small cake of sweetened or, sometimes, unsweetened dough fried in deep fat, typically shaped like a ring or, when prepared with a filling, a ball. anything shaped like a thick ring; an annular object; toroid",
        3.4,
        true),
    ItemModel(
        "Candy",
        "assets/images/candy.jpeg",
        "Confection that features sugar as a principal ingredient. The category, also called sugar confectionery, encompasses any sweet confection, including chocolate, chewing gum, and sugar candy Confection that features sugar as a principal ingredient. The category, also called sugar confectionery, encompasses any sweet confection, including chocolate, chewing gum, and sugar candyConfection that features sugar as a principal ingredient. The category, also called sugar confectionery, encompasses any sweet confection, including chocolate, chewing gum, and sugar candy",
        2.5,
        true),
    ItemModel(
        "Cookie",
        "assets/images/coockie.jpeg",
        "A cookie (American English) or biscuit (British English) is a baked snack or dessert that is typically small, flat, and sweet. It usually contains flour, sugar, egg, and some type of oil, fat, or butter. It may include other ingredients such as raisins, oats, chocolate chips, or nuts. Cookie. Chocolate chip cookies.",
        1.5,
        true),
  ];
  return androidsPickList;
}

List<ItemModel> getPopulerJetsnacksList() {
  List<ItemModel> populerJetsnacksList = [
    ItemModel(
        "Smoothies",
        "assets/images/smoothies.jpeg",
        "Smoothie is a beverage made by puréeing ingredients in a blender. A smoothie commonly has a liquid base, such as fruit juice or milk, yogurt or ice cream. Other ingredients may be added, including fruits, vegetables, non-dairy milk, crushed ice, whey Smoothie is a beverage made by puréeing ingredients in a blender. A smoothie commonly has a liquid base, such as fruit juice or milk, yogurt or ice cream. Other ingredients may be added, including fruits, vegetables, non-dairy milk, crushed ice, whey",
        2.5,
        false),
    ItemModel(
        "Pretzels",
        "assets/images/pretzels.jpeg",
        "Pretzel, a brittle, glazed-and-salted cracker of German or Alsatian origin. Made from a rope of dough typically fashioned into the shape of a loose knot, the pretzel is briefly boiled and then glazed with egg, salted, and baked.",
        3.4,
        false),
    ItemModel(
        "Chips",
        "assets/images/chips.jpeg",
        "a small, thin, crisp, usually salty piece of food typically prepared by frying, baking, or drying. banana chips. especially : potato chip see also corn chip.",
        5.5,
        false),
    ItemModel(
        "Cakes",
        "assets/images/cake.jpeg",
        "A cake is a sweet food made by baking a mixture of flour, eggs, sugar, and fat in an oven. Cakes may be large and cut into slices or small and intended for one person only.",
        1.5,
        false),
  ];
  return populerJetsnacksList;
}

List<ItemModel> getWHFFavouritesList() {
  List<ItemModel> wHFFavouriteList = [
    ItemModel(
        "Food",
        "assets/images/food.jpeg",
        "Delicious meals are tasty, appetizing, scrumptious, yummy, luscious, delectable, mouth-watering, fit for a king, delightful, lovely, wonderful, pleasant, enjoyable, appealing, enchanting, charming and hihgly pleasant to the taste. Delicious meals are tasty, appetizing, scrumptious, yummy, luscious, delectable, mouth-watering, fit for a king, delightful, lovely, wonderful, pleasant, enjoyable, appealing, enchanting, charming and hihgly pleasant to the taste. Delicious meals are tasty, appetizing, scrumptious, yummy, luscious, delectable, mouth-watering, fit for a king, delightful, lovely, wonderful, pleasant, enjoyable, appealing, enchanting, charming and hihgly pleasant to the taste.",
        2.5,
        false),
    ItemModel(
        "Vegetables",
        "assets/images/vegtebles.jpeg",
        "A vegetable is the edible portion of a plant. Vegetables are usually grouped according to the portion of the plant that is eaten such as leaves (lettuce), stem (celery), roots (carrot), tubers (potato), bulbs (onion) and flowers (broccoli). A fruit is the mature ovary of a plant.",
        3.4,
        false),
    ItemModel(
        "Snack",
        "assets/images/snack.jpeg",
        "By definition, a snack is a small portion of food that is smaller than a regular meal, generally consumed between meals. Snacks are defined as smaller, less structured meal that are not eaten during regular meal times, such as breakfast (morning), lunch (midday), and dinner (evening).",
        5.5,
        false),
  ];
  return wHFFavouriteList;
}

List<String> filterList() {
  final List<String> filterListString = [
    "Organic",
    "Glutern-free",
    "Dairy-free",
    "Sweet",
    "Creamy"
  ];
  return filterListString;
}
