import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새 게시물'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          //widged -> scrollview
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "제목을 입력하세요",
                  fillColor: Colors.white70,
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {},
                child: const Text('이미지 선택'),
              ),
              Image.network(
                'https://img.hankyung.com/photo/202211/BF.31807042.1.jpg',
                width: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
