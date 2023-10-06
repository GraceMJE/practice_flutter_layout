import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('widget 상하배치')
        ),
        body: Body(),
      )
    )
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( //column으로 감싸면 축(axis)이 상하좌우 다 적용됨 
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row( // Row는 가로 배치, Column은 새로 배치
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, //좌우 폭에 대해서만 적용
          // width: double.infinity,
          // child: Column( //column은 상하간격 조절하는 기능 따로 있기 때문에 center 적용안됨
          //   mainAxisSize: MainAxisSize.max,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.start, //end
            children: [
              Container(
                  width: 100,
                  height: 80,
                  color: Colors.red,
                  child: Text('Container 1')),
              Container(
                  width: 100,
                  height: 80,
                  color: Colors.blue,
                  child: Text('Container 2')),
              Container(
                  width: 100,
                  height: 80,
                  color: Colors.green,
                  child: Text('Container 3')),
            ],
          ),
        Container(
          width: 300,
          height: 120,
          color: Colors.grey,
          child: Text('Container 4'),
        )
      ],
    );

    // Placeholder(
    //   child: Text('Place holder'),
    // ); //Placeholder; widget만큼 size 차지해라

  }
}
