import 'package:flutter/material.dart';
import 'package:nutrition_ui/main.dart';

class DetailsItems extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  DetailsItems({this.heroTag, this.foodName, this.foodPrice});

  @override
  State<DetailsItems> createState() => _DetailsItemsState();
}

class _DetailsItemsState extends State<DetailsItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7A9BEE),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Details of the Food',
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: 'Montserrat',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 75.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0),
                    ),color: Colors.white,
                  ),height: MediaQuery.of(context).size.height-100.0,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(top:30.0,
                  left: (MediaQuery.of(context).size.width/2)-100.0,
                  child: Hero(
                    tag:widget.heroTag,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.heroTag),fit: BoxFit.cover,
                        )
                      ),
                      height: 200.0,
                      width: 200.0,
                    ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
