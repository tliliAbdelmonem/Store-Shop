import '/models/product_model.dart';

List<ProductModel> products = [
  // HOMME
  const ProductModel(
      id: 1,
      ref: "0001",
      name: "Blazer",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [1, 3, 4],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 200,
      rate: 3.4,
      photo: "young-man-sitting-small-stool-against-white-wall.png"),
  const ProductModel(
      id: 2,
      ref: "0002",
      name: "Jean slim",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [1, 3, 4],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 150,
      rate: 3.4,
      photo: "medium-shot-boy-posing-with-monochrome-outfit.png"),
  const ProductModel(
      id: 3,
      ref: "0003",
      name: "Pull en laine",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [1, 3, 4],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 120,
      rate: 3.4,
      photo: "medium-shot-man-wearing-trucker-hat.png"),
  const ProductModel(
      id: 4,
      ref: "0004",
      name: "Veste en cuir",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [1, 3, 4],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 430,
      rate: 3.4,
      photo: "bohemian-man.png"),
  const ProductModel(
      id: 5,
      ref: "0005",
      name: "Chino",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [1, 3, 4],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 102,
      rate: 3.4,
      photo: "man-suit-jeans-with-arms-crossed.png"),
  const ProductModel(
      id: 6,
      ref: "0006",
      name: "Pantalon de jogging",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [1, 3, 4],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 301,
      rate: 3.4,
      photo: "man-focusing-with-his-fingers.png"),
  const ProductModel(
      id: 7,
      ref: "0007",
      name: "T-shirt col rond",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [1, 3, 4],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 299,
      rate: 3.4,
      photo: "elegant-man-wearing-waistcoat.png"),
  const ProductModel(
      id: 8,
      ref: "0008",
      name: "Chemise à manches ..",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [1, 3, 4],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 175,
      rate: 3.4,
      photo: "man-wearing-leather-jacket.png"),

  // FEMME

  const ProductModel(
      id: 9,
      ref: "0009",
      name: "Robe midi",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [
        1,
        2,
      ],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 360,
      rate: 3.4,
      photo: "front-view-strong-woman-studio.png"),

  const ProductModel(
      id: 10,
      ref: "0010",
      name: "Blouse fluide",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [
        1,
        2,
      ],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 422,
      rate: 3.4,
      photo: "indignant-female-studen.png"),

  const ProductModel(
      id: 11,
      ref: "0011",
      name: "T-shirt",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [
        1,
        2,
      ],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 532,
      rate: 3.4,
      photo: "medium-shot-phone.png"),

  const ProductModel(
      id: 12,
      ref: "0012",
      name: "Jean taille haute",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [
        1,
        2,
      ],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 221,
      rate: 3.4,
      photo: "pexels-godisable.png"),
  const ProductModel(
      id: 13,
      ref: "0013",
      name: "Cardigan",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [
        1,
        2,
      ],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 332,
      rate: 3.4,
      photo: "fashion-portrait-young-elegant-woman.png"),
  const ProductModel(
      id: 14,
      ref: "0014",
      name: "Veste",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [
        1,
        2,
      ],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 119,
      rate: 3.4,
      photo: "shocked-girl.png"),
  const ProductModel(
      id: 15,
      ref: "0015",
      name: "Legging",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [
        1,
        2,
      ],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 441,
      rate: 3.4,
      photo: "pretty-woman.png"),
  const ProductModel(
      id: 16,
      ref: "0016",
      name: "Robe",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices ultrices ante, ut bibendum magna fermentum sit amet.",
      categoryIds: [
        1,
        2,
      ],
      colors: ["#3366FF", "#22B858", "#DB9D28"],
      price: 223,
      rate: 3.4,
      photo: "woman-567.png"),
];
