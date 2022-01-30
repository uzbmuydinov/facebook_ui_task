import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "facebook",
          style: TextStyle(
              fontSize: 30,
              fontFamily: "ffont",
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              color: Colors.blueGrey,
            ),
          ),
          IconButton(
            padding: EdgeInsets.only(right: 10),
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.blueGrey,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        children: [
 // post create qismi
          Container(
            height: 120,
            color: Colors.white,
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
// main profile image avatar
                      Container(
                        height: 52,
                        width: 52,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/main/main_me.jpg"),
                        ),
                      ),
  // post yozadigan field text bo'limi
                      Expanded(
                        child: Container(
                          height: 42,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(color: Colors.grey, width: 1),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Что у вас нового?",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
// Search textfild tagidagi 3 ta ikonka
                Expanded(
                  child: Row(
                    children: [
// Live chat ikonka
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Прямой эфир ")
                          ],
                        ),
                      ),

// ikonkalar orasidagi vertikal tayoqcha
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        width: 1,
                        color: Colors.grey.shade300,
                      ),

// Foto ikonka
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.photo_size_select_actual_outlined,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Фото")
                        ],
                      )),
                      // Location ikonka
// ikonkalar orasidagi vertikal tayoqcha
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        width: 1,
                        color: Colors.grey.shade300,
                      ),
                      Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Посещение")
                          ],
                      ),),
                    ],
                  ),
                )
              ],
            ),
          ),

 // post stories qismi
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 10),
            height: 200,
            color: Colors.white,
            // gortizontal swipe ebo'ladigan list view
            child: ListView(
              scrollDirection: Axis.horizontal,

              children: [
                SizedBox(width: 10,),
                // Xurshid aka
                makeStory(
                  storyImage: "assets/images/stories/s1_xa.jpg",
                  userImage: "assets/images/main/main_xurshidaka.jpg",
                  UserName: "Khurshidbek Kurbanov",
                ),
                // Odil aka
                makeStory(
                  storyImage: "assets/images/stories/s2_oa.jpg",
                  userImage: "assets/images/main/main_odilaka.jpg",
                  UserName: "Odilbek Mirzayev",
                ),
                makeStory(
                  storyImage: "assets/images/stories/s3_pdp.jpg",
                  userImage: "assets/images/main/main_pdp.png",
                  UserName: "PDP academy",
                ),
                makeStory(
                  storyImage: "assets/images/stories/dekabrio.jpg",
                  userImage: "assets/images/main/main_sherzod.jpg",
                  UserName: "Sherzodbek Qozoqov",
                ),

              ],
            ),
          ),
// post list qismi
          makeFeed(
              userName: 'Khurshidbek Kurbanov',
              userImage: 'assets/images/main/main_xurshidaka.jpg',
              feedTime: '1 hr ago',
              feedText: 'Army of Android and Flutter',
              feedImage: 'assets/images/posts/flutter_army.jpg'
          ),
          makeFeed(
              userName: 'Odilbek Mirzayev',
              userImage: 'assets/images/main/main_odilaka.jpg',
              feedTime: '1 hr ago',
              feedText: 'Qudratimizga shubha qilsangiz, biz yetishtirgan kadrlarga boqing',
              feedImage: 'assets/images/posts/img_1.png'
          ),
          makeFeed(
              userName: 'Мўминжон Мўйдинов',
              userImage: 'assets/images/main/main_me.jpg',
              feedTime: '15 minute ago',
              feedText: "Qo'lida olg'asi bor odamning ko'ziga hamma narsa mix bo'lib ko'rinadi",
              feedImage: 'assets/images/posts/Molotok.jpg'
          ),
        ],
      ),
    );
  }

  // makeStory funksiyasi
  Widget makeStory({storyImage,userImage,UserName}){
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.1),
                ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                  )
                ),
              ),
              Text(UserName, style: TextStyle(color: Colors.white, fontSize: 13),),
            ],
          ),
        ),
      ),
    );
  }
 // make feed timeline funksiyasi
  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(userImage),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(userName, style: TextStyle(color: Colors.grey[900], fontSize: 17, fontWeight: FontWeight.bold,fontFamily: "roboto"),),
                            SizedBox(height: 3,),
                            Text(feedTime, style: TextStyle(fontSize: 15, color: Colors.grey,fontFamily: "roboto"),),
                          ],
                        )
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey.shade600,),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(height: 10,),

                Positioned(child: Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey[800], height: 1.5, fontFamily: "roboto"),)),
                SizedBox(height: 10,),
              ],
            ),
          ),

          Container(
            height: 240,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(feedImage),
                    fit: BoxFit.cover
                )
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    makeLike(),
                    Transform.translate(
                        offset: Offset(-5, 0),
                        child: makeLove()
                    ),
                    SizedBox(width: 3,),
                    Text("2.3K", style: TextStyle(fontSize: 15, color: Colors.grey[800]),)
                  ],
                ),
                Text("400 Comments", style: TextStyle(fontSize: 13, color: Colors.grey[800]),)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive ? Colors.blue : Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.chat, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }

}
