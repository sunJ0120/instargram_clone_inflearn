import 'package:flutter/material.dart';
import 'package:instargram_clone_inflearn/create/create_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  final List<String> _urls = const [
    'https://thumb.mtstarnews.com/06/2022/09/2022092418122613152_1.jpg',
    'https://cdn.mediafine.co.kr/news/photo/202305/30454_52145_5511.jpg',
    'https://cdn.topstarnews.net/news/photo/202307/15371470_1150533_2335.jpg',
    'https://img.hankyung.com/photo/202211/BF.31807042.1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () { //navpush
          Navigator.push(
              context,
              MaterialPageRoute( builder:
              (context) => const CreatePage()),
          );
        },
        child: const Icon(Icons.create),
      ),
      appBar: AppBar(
        title: const Text('instargram clone'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: GridView.builder(
          itemCount: _urls.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            final url = _urls[index];
            return Image.network(
              url,
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
