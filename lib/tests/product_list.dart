import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<String> productName = [
    'Mango',
    'Orange',
    'Grapes',
    'Banana',
    'Chery',
    'Peach',
    'Mixed Fruit Basket',
  ];
  List<String> productUnit = [
    'KG',
    'Dozen',
    'KG',
    'Dozen',
    'KG',
    'KG',
    'KG',
  ];
  List<int> productPrice = [10, 28, 30, 40, 58, 60, 78];
  List<String> productImage = [
    'https://media.istockphoto.com/id/168370138/photo/mango.jpg?s=1024x1024&w=is&k=20&c=HBXIjdVwjydQmINVBRCxeVivTdejyHsZPgVWLiniGRM=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFI9JtHoyYLzsYZ_X0eFE31CGkpLdeWRsw7w&s',
    'https://image.shutterstock.com/image-photo/green-grape-leaves-isolated-on-600w-533487490.jpg',
    'https://media.istockphoto.com/id/173242750/photo/banana-bunch.jpg?s=612x612&w=0&k=20&c=MAc8AXVz5KxwWeEmh75WwH6j_HouRczBFAhulLAtRUU=',
    'https://media.istockphoto.com/id/157428769/photo/cherry-trio-with-stem-and-leaf.jpg?s=1024x1024&w=is&k=20&c=PGrash4kROBaeSWYY63VS-wyVqiVHPA6LsPMoeAzms8=',
    'https://media.istockphoto.com/id/1151868959/photo/single-whole-peach-fruit-with-leaf-and-slice-isolated-on-white.jpg?s=1024x1024&w=is&k=20&c=zLb--kmGvSTUkjgSwVXForXx1C3WRSjGN77rXm_y6XM=',
    'https://media.istockphoto.com/id/1273378551/photo/set-of-summer-fruits-and-berries-in-wooden-serving.jpg?s=612x612&w=0&k=20&c=XtJFQDgpV_AsG3aFzo3FVN2pmbey7h0jWHMzlHWJ5Kk=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Product List'),
        centerTitle: true,
        actions: const [
          Center(
            child: badges.Badge(
              badgeContent: Text(
                '3',
                style: TextStyle(color: Colors.white),
              ),
              child: Icon(Icons.settings),
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: productName.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            children: [
                              Image(
                                height: 100,
                                width: 100,
                                image: NetworkImage(
                                    productImage[index].toString()),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productName[index].toString(),
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      productUnit[index].toString() +
                                          ' ' +
                                          r'$' +
                                          productPrice[index].toString(),
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        width: 100,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Add to card',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
