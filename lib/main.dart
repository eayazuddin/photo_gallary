import 'package:flutter/material.dart';

void main() {
  runApp(PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photo Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhotoGalleryPage(),
    );
  }
}

class PhotoGalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Photo Gallery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for photos',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
                ),
              ),
            ),
            Wrap(
              spacing: 20,
              runSpacing: 14,
              children: [
                photoButton(context, 'https://images.hindustantimes.com/auto/img/2022/08/21/600x338/BMW_Vision_M_1643109906741_1661053810065_1661053810065.jpg', 'Photo 1'),
                photoButton(context, 'https://images.unsplash.com/photo-1525609004556-c46c7d6cf023?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Y2Fyc3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80', 'Photo 2'),
                photoButton(context, 'https://cdn.pixabay.com/photo/2016/04/24/10/48/sports-car-1349139_1280.jpg', 'Photo 3'),
                photoButton(context, 'https://cdn.jdpower.com/Average%20Weight%20Of%20A%20Car.jpg', 'Photo 4'),
                photoButton(context, 'https://images.hindustantimes.com/auto/img/2022/04/17/1600x900/3-Ba-BMW_1626449662688_1650177061774.jpg', 'Photo 5'),
                photoButton(context, 'https://cdni.autocarindia.com/utils/imageresizer.ashx?n=https://cms.haymarketindia.net/model/uploads/modelimages/Hyundai-Grand-i10-Nios-200120231541.jpg&w=872&h=578&q=75&c=1', 'Photo 6'),
              ],
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Image.network('https://images.pexels.com/photos/3802510/pexels-photo-3802510.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  title: Text('Photo 7'),
                  subtitle: Text('Description 7'),
                ),
                ListTile(
                  leading: Image.network('https://images.cnbctv18.com/wp-content/uploads/2023/02/04-BUGATTI_CHIRON-Profilee-1-1019x573.jpg?im=FitAndFill,width=1200,height=900'),
                  title: Text('Photo 8'),
                  subtitle: Text('Description 8'),
                ),
                ListTile(
                  leading: Image.network('https://images.pexels.com/photos/1402787/pexels-photo-1402787.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  title: Text('Photo 9'),
                  subtitle: Text('Description 9'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Photos Uploaded Successfully!')),
          );
        },
        child: Icon(Icons.cloud_upload),
      ),
    );
  }

  Widget photoButton(BuildContext context, String imageUrl, String caption) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Clicked on photo!')),
        );
      },
      child: Column(
        children: [
          Image.network(
            imageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            caption,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

