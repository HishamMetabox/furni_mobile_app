class Product {
  final int id;
  final String name;
  final String category;
  final String description;
  final double price;
  final String measurements;
  final List<String> colours;
  final List<String> images;
  final String display_image;
  final List<int> quantity;
  final int rating;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.price,
    required this.measurements,
    required this.colours,
    required this.images,
    required this.quantity,
    required this.rating,
    required this.display_image
  });
}

final List<String> category = [
  "All",
  "Kitchen",
  "Living Room",
  "Bedroom",
  "Bathroom",
  "Dining Room",
  "Office"
];

final List<Product> dummyProducts = [
  Product(id: 1, 
  name: "Tray Table", 
  category: "Bedroom", 
  description: "Experience the perfect blend of functionality and flair with our Multicolored Tray Tables. These versatile tables are designed to inject a vibrant splash of color into any room while providing an instant, sturdy surface for dining, working, or leisure activities. Crafted for convenience, each table features a reliable folding mechanism, making them the ultimate space-saving solution for small apartments, dorms, or dynamic living areas—they can be effortlessly tucked away when not in use. Built from durable materials with an easy-to-clean finish, these lightweight tables are highly portable and stand up well to everyday spills and use, ensuring they are as practical as they are decorative. Choose from a selection of eye-catching hues to create a playful, personalized look or to simply add a bright, functional accent wherever you need it most.", 
  price: 19.99, 
  measurements: "17 1/2x20 5/8", 
  colours: ["Black", "Red","White","Grey"], 
  images: [
    "assets/images/product_image_1.jpg",
    "assets/images/product_image_2.jpg",
    "assets/images/product_image_3.jpg"
  ], 
  quantity: [2,4,1,3], 
  rating: 4,
  display_image: "assets/images/product_image_4.png"
  ),
  Product(id: 2, 
  name: "Loveseat Sofa", 
  category: "Living Room", 
  description:  "Meet the perfect marriage of comfort and compact style with our Grey Loveseat Sofa. Upholstered in a soft, durable fabric in a sophisticated shade of grey, this piece is designed to seamlessly blend into any contemporary or traditional decor scheme, from minimalist apartments to cozy dens. Ideal for smaller living spaces, the loveseat comfortably seats two people without sacrificing luxurious feel. Featuring plush, generously padded cushions and supportive armrests, it offers a welcoming spot for relaxing, reading, or enjoying a quiet evening. The neutral grey hue ensures versatility, easily complementing bold accent colors or",
  price: 199, 
  measurements: "17 1/2x20 5/8", 
  colours:  ["Grey","Red"], 
  images: [
    "assets/images/Sofa1.jpeg",
    "assets/images/Sofa1-2.jpeg",
    "assets/images/Sofa1-3.jpeg"
  ], 
  quantity: [2,4,1,3], 
  rating: 3,
  display_image: "assets/images/Sofa1.jpeg"
  ),
  Product(id: 3, 
  name: "Luxury Sofa", 
  category: "Office", 
  description:  "Introducing the epitome of refined comfort and stately design: our Opulent Luxury Sofa. This masterpiece of seating is crafted for the discerning homeowner, combining breathtaking aesthetics with unparalleled comfort. Upholstered in sumptuously soft, high-grade [Mention fabric, e.g., velvet, Italian leather, or bespoke chenille], the sofa features deep, hand-tufted cushions and elegantly rolled or streamlined arms, providing a look that is both timeless and grand. The structure rests on finely detailed, solid [Mention material, e.g., mahogany or polished brass] legs, adding a layer of subtle glamour. Designed to be the undisputed focal point of any high-end living space, this sofa delivers a seating experience that defines true luxury and enduring style.",
  price: 299, 
  measurements: "17 1/2x20 5/8", 
  colours:  ["Black","Grey","White"], 
  images: [
    "assets/images/Sofablanc1.jpeg",
    "assets/images/Sofablanc2.jpeg",
    "assets/images/Sofablanc3.jpeg"
  ], 
  quantity: [2,4,1], 
  rating: 5,
  display_image: "assets/images/Sofablanc1.jpeg"
  ),
];

class ProductBucket {
  ProductBucket({required this.items});
  ProductBucket.forItems(List<Product> itemList) : items = List.from(itemList);
  final List<Product> items;
}