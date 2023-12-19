import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas/Widgets/AppBarWidget.dart';
import 'package:uas/Widgets/BestSellerWidget.dart';
import 'package:uas/Widgets/KategoriWidget.dart';
import 'package:uas/Widgets/MenuWidget.dart';
import 'package:uas/Widgets/TerbaruWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      offset: Offset(0, 3)),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(children: [
                  Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Apa yang kamu cari?",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Icon(Icons.filter_list),
                ]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Kategori",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          KategoriWidget(),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Best Seller",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          BestSellerWidget(),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              " Terbaru",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          TerbaruWidget(),
        ],
      ),
      drawer: MenuWidget(),
      floatingActionButton: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 18,
            offset: Offset(0, 3),
          )
        ]),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "keranjangPage");
          },
          child: Icon(
            CupertinoIcons.cart,
            size: 26,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
