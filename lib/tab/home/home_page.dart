import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instargram Clone'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text('Instargram에 오신 것을 환영합니다.'),
            const SizedBox(height: 20),
            const Text('사진과 동영상을 보려면 팔로우하세요'),
            const SizedBox(height: 20),
            Card(
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2022/06/03/7d17ec30-276f-4265-b056-c3a691a5a8f1.jpg'),
                      ),
                    ),
                    const SizedBox(height: 8), //padding
                    const Text(
                      'test@test.com,',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text('NANA'),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://thumb.mtstarnews.com/06/2022/09/2022092418122613152_1.jpg',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 4),
                        Image.network(
                          'https://cdn.mediafine.co.kr/news/photo/202305/30454_52145_5511.jpg',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 4),
                        Image.network(
                          'https://cdn.topstarnews.net/news/photo/202307/15371470_1150533_2335.jpg',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('Facebook 친구'),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('팔로우'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
