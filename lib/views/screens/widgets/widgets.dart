import 'package:flutter/material.dart';

class CategoryCards extends StatelessWidget {
  const CategoryCards({
    Key? key,
    required this.size,
    required this.image,
    required this.title,
    required this.press,
    required this.height,
    required this.width,
  }) : super(key: key);

  final Size size;
  final String image, title;
  final VoidCallback press;
  final height, width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: size.height * 0.04, left: size.width * 0.07),
      child: InkWell(
        onTap: press,
        child: Container(
          height: height,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: size.width * 0.25,
                  height: size.height * 0.10,
                  child: Image.asset(image)),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.01),
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: size.width * 0.04),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  spreadRadius: 0.5,
                  blurRadius: 3,
                )
              ],
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),
    );
  }
}

class CategoryCards1 extends StatelessWidget {
  const CategoryCards1(
      {super.key,
      required this.size,
      required this.Text1,
      required this.Text2,
      required this.Text3,
      required this.Text4,
      required this.Text5,
      required this.iconName});

  final Size size;
  final String Text1, Text2, Text3, Text4, Text5;
  final iconName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.05),
          child: InkWell(
            onTap: () {},
            child: Container(
              width: size.width * 0.75,
              height: size.height * 0.08,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey,
                      spreadRadius: 0.5,
                      blurRadius: 3,
                    )
                  ],
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconName,
                    size: size.width * 0.1,
                    color: Colors.blue,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.04),
                    child: Text(
                      Text1,
                      style: TextStyle(
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.15),
          child: Container(
            width: size.width * 0.75,
            height: size.height * 0.08,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey,
                    spreadRadius: 0.5,
                    blurRadius: 3,
                  )
                ],
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.03, left: size.width * 0.05),
              child: Text(
                Text2,
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: size.width * 0.05),
              ),
            ),
          ),
        ),
        Container(
          width: size.width * 0.75,
          height: size.height * 0.3,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  spreadRadius: 0.5,
                  blurRadius: 3,
                )
              ],
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.03, left: size.width * 0.05),
                child: Text(
                  Text3,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: size.width * 0.05),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.03, left: size.width * 0.05),
                child: Text(
                  Text4,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: size.width * 0.05),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.03, left: size.width * 0.05),
                child: Text(
                  Text5,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * 0.05,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
