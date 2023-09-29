import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 26,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Find Your",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Inspiration",
                    style: TextStyle(fontSize: 48),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black87,
                          ),
                          hintText: "Search what you're looking for",
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 16,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Promo Today",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      PromoCard(imageAddress: "assets/images/img1.jpg"),
                      PromoCard(imageAddress: "assets/images/img2.jpg"),
                      PromoCard(imageAddress: "assets/images/img1.jpg"),
                      PromoCard(imageAddress: "assets/images/img2.jpg"),
                      // PromoCard(imageAddress: "assets/images/img1.jpg"),
                      // PromoCard(imageAddress: "assets/images/img1.jpg")
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/img2.jpg"),
                        fit: BoxFit.cover,
                      )),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          "Best Design",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PromoCard extends StatelessWidget {
  const PromoCard({required this.imageAddress});

  final String imageAddress;

  @override
  Widget build(context) {
    return Container(
      width: 170,
      height: 230,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imageAddress),
            fit: BoxFit.cover,
          )),
    );
  }
}
